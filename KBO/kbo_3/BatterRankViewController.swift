//
//  BatterRankViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 6..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class BatterRankViewController: UIViewController, UITableViewDelegate {
    
    // 타자 순위 제어 변수
    var OtherKindButton:Int = 0
    
    //타자 순위 이름
    @IBOutlet weak var BatterRankKind: UILabel!
    
    //타자 사진
    @IBOutlet weak var BatterImage: UIImageView!
    
    //타자 순위 테이블 뷰
    @IBOutlet weak var BatterRankTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        OtherKindButton = 3

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //다른 순위 보기(이전)
    @IBAction func BatterRankKindButtonBefore(_ sender: Any) {
        OtherKindButton = (OtherKindButton-1)%4
        switch OtherKindButton {
        case 0:
            BatterRankKind.text = "도루 순위"
        case 1:
            BatterRankKind.text = "홈런 순위"
        case 2:
            BatterRankKind.text = "타점 순위"
        case 3:
            BatterRankKind.text = "타율 순위"
        default:
            BatterRankKind.text = "오류"
        }
    }
    
    //다른 순위 보기(다음)
    @IBAction func BatterRankKindButtonAfter(_ sender: Any) {
        OtherKindButton = (OtherKindButton+1)%4
        switch OtherKindButton {
        case 0:
            BatterRankKind.text = "도루 순위"
        case 1:
            BatterRankKind.text = "홈런 순위"
        case 2:
            BatterRankKind.text = "타점 순위"
        case 3:
            BatterRankKind.text = "타율 순위"
        default:
            BatterRankKind.text = "오류"
        }
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
