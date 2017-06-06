//
//  Tab_1_ViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 5..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class Tab_1_ViewController: UIViewController, UITableViewDelegate {

    func getFromJSON(){
        schedules.removeAll()
        
        let url = URL(string: urlStr_schedule+UIDevice.current.identifierForVendor!.uuidString)!
        
        let data = try! Data(contentsOf: url)
        
        //JSON PARSING
        if let result = try! JSONSerialization.jsonObject(with: data, options: []) as? [ [String:Any] ]
        {
            
            for one in result {
                
                var schedule = Schedule()
                
                guard let state = one["state"] as? Int,
                    let time = one["time"] as? String,
                    let day = one["day"] as? String,
                    let home_team = one["home_team"] as? String,
                    let home_score = one["home_score"] as? Int,
                    let away_team=one["away_team"] as? String,
                    let away_score=one["away_score"] as? Int,
                    let stardium = one["stardium"] as? String

                    else{
                        return
                }
                
                schedule.state = state
                schedule.time = time
                schedule.day = day
                schedule.home_team = home_team
                schedule.home_score = home_score
                schedule.away_team = away_team
                schedule.away_score = away_score
                schedule.stardium = stardium
                
                schedules.append(schedule)
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
            
            cell?.HomeTeamName.text = schedule.home_team
            cell?.HomeTeamScore.text = String(schedule.home_score!)
            cell?.AwayTeamName.text = schedule.away_team
            cell?.AwayTeamScore.text = String(schedule.away_score!)
            cell?.GameTime.text = schedule.time
            cell?.GamePlace.text = schedule.stardium
            
           return cell!
            
    }
}

