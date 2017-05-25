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
