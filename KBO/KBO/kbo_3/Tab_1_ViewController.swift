//
//  Tab_1_ViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 5..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class Tab_1_ViewController: UIViewController, UITableViewDelegate {

    var index:Int = 3

    
    func getFromJSON(){
        schedules.removeAll()
        
        let url = URL(string: urlStr_schedule)!
        
        let data = try! Data(contentsOf: url)
        
        
        let date = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd"
        let dateString = dateFormatter.string(from:date as Date)
        //print(dateString)
        
        let ago1 = Calendar.current.date(byAdding: .day, value: -1, to: Date())
        let dateString_ago1 = dateFormatter.string(from:ago1! as Date)

        let ago2 = Calendar.current.date(byAdding: .day, value: -2, to: Date())
        let dateString_ago2 = dateFormatter.string(from:ago2! as Date)

        let ago3 = Calendar.current.date(byAdding: .day, value: -3, to: Date())
        let dateString_ago3 = dateFormatter.string(from:ago3! as Date)

        let tomorrow1 = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        let dateString_tomorrow1 = dateFormatter.string(from:tomorrow1! as Date)

        let tomorrow2 = Calendar.current.date(byAdding: .day, value: 2, to: Date())
        let dateString_tomorrow2 = dateFormatter.string(from:tomorrow2! as Date)

        let tomorrow3 = Calendar.current.date(byAdding: .day, value: 3, to: Date())
        let dateString_tomorrow3 = dateFormatter.string(from:tomorrow3! as Date)



        
        //JSON PARSING
        if let result = try! JSONSerialization.jsonObject(with: data, options: []) as? [ [String:Any] ]
        {
            
            for one in result {
                
                var schedule = Schedule()
                
                let state = one["state"] as? Int
                let time = one["time"] as? String
                let day = one["day"] as? String
                let home_team = one["home_team"] as? String
                let home_score = one["home_score"] as? Int
                let away_team=one["away_team"] as? String
                let away_score=one["away_score"] as? Int
                let stardium = one["stardium"] as? String

                
                
                schedule.state = state
                schedule.time = time
                schedule.day = day
                schedule.home_team = home_team
                schedule.home_score = home_score
                schedule.away_team = away_team
                schedule.away_score = away_score
                schedule.stardium = stardium
                

                if dateString_ago3==day {
                    week.0.append(schedule)
                }
                if dateString_ago2==day {
                    week.1.append(schedule)
                }
                if dateString_ago1==day {
                    week.2.append(schedule)
                }
                if dateString==day {
                    schedules.append(schedule)
                    week.3.append(schedule)
                }
                if dateString_tomorrow1==day {
                    week.4.append(schedule)
                }
                if dateString_tomorrow2==day {
                    week.5.append(schedule)
                }
                if dateString_tomorrow3==day {
                    week.6.append(schedule)
                }
                
            }
        }
    }
    
    // 날짜 정보
    @IBOutlet weak var DayInfo: UILabel!
    // 이전날짜 버튼 클릭시
    @IBAction func DayBeforeButton(_ sender: Any) {
    }
    // 다음날짜 버튼 클릭시
    @IBAction func DayAfterButton(_ sender: Any) {
    }
    // 일정/결과 테이블 뷰
    @IBOutlet weak var ScheduleTableView: UITableView!
    
    @IBOutlet weak var GameTime: UILabel!       // 경기시간
    
    //원정팀 정보
    @IBOutlet weak var AwayTeamName: UILabel!
    @IBOutlet weak var AwayTeamPitcherStatus: UILabel!
    @IBOutlet weak var AwayTeamPitcherName: UILabel!
    @IBOutlet weak var AwayTeamScore: UILabel!
    
    //홈팀 정보
    @IBOutlet weak var HomeTeamScore: UILabel!
    @IBOutlet weak var HomeTeamName: UILabel!
    @IBOutlet weak var HomeTeamPitcherStatus: UILabel!
    @IBOutlet weak var HomeTeamPitcherName: UILabel!
    
    @IBOutlet weak var GamePlace: UILabel!      // 경기 장소
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getFromJSON()
        
        ScheduleTableView.reloadData()
        
        ScheduleTableView.dataSource = self
        ScheduleTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension Tab_1_ViewController: UITableViewDataSource{
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schedules.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = ScheduleTableView.dequeueReusableCell(withIdentifier: "scheduleCell", for: indexPath) as? ScheduleTableViewCell

            let schedule = schedules[indexPath.row]
           // let schedule = week[index](index)[indexPath.row]
            
            cell?.HomeTeamName.text = schedule.home_team
            if schedule.home_score != nil {
                cell?.HomeTeamScore.text = String(schedule.home_score!)
            } else {
                cell?.HomeTeamScore.text = String("")
            }
            cell?.AwayTeamName.text = schedule.away_team
            if schedule.away_score != nil {
                cell?.AwayTeamScore.text = String(schedule.away_score!)
            } else {
                cell?.AwayTeamScore.text = String("")
            }
            cell?.GameTime.text = schedule.time
            cell?.GamePlace.text = schedule.stardium
            
           return cell!
            
    }
}

