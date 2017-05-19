from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from crawling.models import Hitter, Player
from crawling.serializers import CrawlingSerializer


class JSONResponse(HttpResponse):
    """
    콘텐츠를 JSON으로 변환한 후 HttpResponse 형태로 반환합니다.
    """
    def __init__(self, data, **kwargs):
        content = JSONRenderer().render(data)
        kwargs['content_type'] = 'application/json'
        super(JSONResponse, self).__init__(content, **kwargs)


@csrf_exempt
def hitter_list(request):
    """
    코드 조각을 모두 보여주거나 새 코드 조각을 만듭니다.
    """
    if request.method == 'GET':
        snippets = Hitter.objects.all()
        serializer = CrawlingSerializer(snippets, many=True)
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
