from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from crawling.models import Hitter
from crawling.serializers import CrawlingSerializer
from urllib.request import urlopen
from bs4 import BeautifulSoup



class JSONResponse(HttpResponse):
    """
    콘텐츠를 JSON으로 변환한 후 HttpResponse 형태로 반환합니다.
    """
    def __init__(self, data, **kwargs):
        content = JSONRenderer().render(data)
        kwargs['content_type'] = 'application/json; charset=utf-8'
        super(JSONResponse, self).__init__(content, **kwargs)


@csrf_exempt
def hitter_list(request):
    """
    코드 조각을 모두 보여주거나 새 코드 조각을 만듭니다.
    """
    if request.method == 'GET':
        hitters = Hitter.objects.all()
        serializer = CrawlingSerializer(hitters, many=True)
        return JSONResponse(serializer.data)

    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = CrawlingSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JSONResponse(serializer.data, status=201)
        return JSONResponse(serializer.errors, status=400)


@csrf_exempt
def hitter_detail(request, pk):
    """
    코드 조각 조회, 업데이트, 삭제
    """
    try:
        hitter = Hitter.objects.get(pk=pk)
    except Hitter.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = CrawlingSerializer(hitter)
        return JSONResponse(serializer.data)


def make_database_hitter(reqeust):
    data = urlopen('http://www.koreabaseball.com/Record/Player/HitterBasic/Basic1.aspx')
    soup = BeautifulSoup(data.read(), "html.parser")

    i = 0
    hitters = []
    for tr in soup.find_all('tr'):
        if i < 1:
            i += 1
        else:
            row = 0
            player = {}
            for td in tr.find_all('td'):
                if row == 0:
                    player['rank'] = td.text
                elif row == 1:
                    player['name'] = td.find('a').text
                elif row == 2:
                    player['team'] = td.text
                else:
                    player[td.get('data-id')] = td.text

                row += 1
            hitters.append(player)

    for hitter in hitters:
        player = Hitter()
        player.name = hitter['name']
        player.rate = hitter['HRA_RT']
        player.homerun = hitter['HR_CN']
        player.point = hitter['RBI_CN']
        player.team = hitter['team']
        player.save()

    return HttpResponse("OK")