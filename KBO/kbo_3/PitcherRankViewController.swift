//
//  PitcherRankViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 6..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class PitcherRankViewController: UIViewController, UITableViewDelegate {

    //투수 순위 이름
    @IBOutlet weak var PitcherRankKind: UILabel!
    
    //투수 순위 테이블 뷰
    @IBOutlet weak var PitcherRankTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //다른 순위 보기(이전)
    @IBAction func PitcherRankKindButtonBefore(_ sender: Any) {
    }
    
    //다른 순위 보기(다음)
    @IBAction func PitcherRankKindButtonAfter(_ sender: Any) {
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
