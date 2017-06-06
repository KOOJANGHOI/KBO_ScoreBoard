//
//  Tab_4_ViewController.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 5..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class Tab_4_ViewController: UIViewController {

    var goodsFlag:Int = 0
    @IBOutlet weak var ticketNum: UILabel!
    @IBOutlet weak var goodsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch goodsFlag {
        case 0: goodsImage.image = #imageLiteral(resourceName: "goods_1")
        case 1: goodsImage.image = #imageLiteral(resourceName: "goods_2")
        case 2: goodsImage.image = #imageLiteral(resourceName: "goods_3")
        case 3: goodsImage.image = #imageLiteral(resourceName: "goods_4")
        case 4: goodsImage.image = #imageLiteral(resourceName: "goods_5")
        default: goodsImage.image = nil
        }
        
        
        
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
