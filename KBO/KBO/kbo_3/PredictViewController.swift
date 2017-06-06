//
//  PredictViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 6. 6..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class PredictViewController: UIViewController {

    @IBOutlet weak var predictSegment: UISegmentedControl!
    var result:Int = 0
    var gameNum:Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("")
        print(gameNum)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func predictSegmentClick(_ sender: Any) {
        if(predictSegment.selectedSegmentIndex == 0) // 원정팀 승
        {
            result = -1
        }
        else if(predictSegment.selectedSegmentIndex == 1) // 홈팀 승
        {
            result = 0
        }
        else if(predictSegment.selectedSegmentIndex == 2) // 홈팀 승
        {
            result = 1
        }
    }
    
    // 예측 버튼 Yes
    @IBAction func predictYes(_ sender: Any) {
        // 선택 후 이벤트
        print("yes")
        print(gameNum)
        dismiss(animated: true, completion: nil)
    }
    // 예측 버튼 No
    @IBAction func predictNo(_ sender: Any) {
        print("no")
        print(gameNum)
        dismiss(animated: true, completion: nil)
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
