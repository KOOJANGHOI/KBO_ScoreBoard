//
//  Tab_1_ViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 5..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class Tab_1_ViewController: UIViewController, UITableViewDelegate {

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
    override func viewDidLoad() {
        super.viewDidLoad()

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
//var away_team:String
//var home_team:String
//var away_pitcher:String
//var home_pitcher:String
//var time:String
//var stardium:String
//@IBOutlet weak var GameTime: UILabel!       // 경기시간
//
////원정팀 정보
//@IBOutlet weak var AwayTeamName: UILabel!
//@IBOutlet weak var AwayTeamPitcherStatus: UILabel!
//@IBOutlet weak var AwayTeamPitcherName: UILabel!
//@IBOutlet weak var AwayTeamScore: UILabel!
//
////홈팀 정보
//@IBOutlet weak var HomeTeamScore: UILabel!
//@IBOutlet weak var HomeTeamName: UILabel!
//@IBOutlet weak var HomeTeamPitcherStatus: UILabel!
//@IBOutlet weak var HomeTeamPitcherName: UILabel!
//
//@IBOutlet weak var GamePlace: UILabel!      // 경기 장소

//extension Tab_1_ViewController: UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return schedule.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
//        UITableViewCell {
//            let cell = RankTableView.dequeueReusableCell(withIdentifier: "scheduleCell", for: indexPath) as? ScheduleTableViewCell
//
//            let information = schedule[indexPath.row]
//
//           cell?.TeamName.text = team.name
//           cell?.WinNum.text = String(team.win!)
//           cell?.LoseNum.text = String(team.lose!)
//           cell?.DrawNum.text = String(team.draw!)
//           let sum = win + lose + draw
//           cell?.GameNum.text = String(sum)
//           cell?.WinRate.text = String(team.diff!)
//                
//           cell?.TeamRank.text = String(team.rank!)
//
//           return cell!
//            
//    }
//}

