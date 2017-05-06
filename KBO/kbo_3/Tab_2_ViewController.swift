//
//  Tab_2_ViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 5..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class Tab_2_ViewController: UIViewController, UITableViewDelegate {
    
    // 날짜(요일) 관련 레이블
    @IBOutlet weak var DayInfo: UILabel!
    
    
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
    
    //이전 날짜 버튼 클릭시
    @IBAction func DayBeforeButton(_ sender: Any) {
    }
    
    
    //다음 날짜 버튼 클릭시
    @IBAction func DayAfterButton(_ sender: Any) {
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
