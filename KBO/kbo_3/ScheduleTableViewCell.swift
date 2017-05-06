//
//  ScheduleTableViewCell.swift
//  kbo_3
//
//  Created by 구장회 on 2017. 5. 6..
//  Copyright © 2017년 구장회. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {

    
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
