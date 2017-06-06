//
//  ApplyViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 6. 6..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class ApplyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func applyYes(_ sender: Any) {
        /* 응모시 처리부분 */
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func applyNo(_ sender: Any) {
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
