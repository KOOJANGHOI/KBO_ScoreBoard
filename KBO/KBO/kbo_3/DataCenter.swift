//
//  DataHouse.swift
//  NSURLExample
//
//  Created by KIMTAEHO on 2017. 5. 20..
//  Copyright © 2017년 KIMTAEHO. All rights reserved.
//

import Foundation

let urlStr_hitter = "http://127.0.0.1:8000/hitters/"
let urlStr_pitcher = "http://127.0.0.1:8000/pitchers/"
let urlStr_team = "http://127.0.0.1:8000/teams/"
let poo:String = "구장회 똥냄새 지림"

struct Player {
    var id:Int?
    var hit:Int?
    var number:Int?
}

struct Hitter {
    var name:String?
    var rate:Float?
    var homerun:Int?
    var team:String?
    var point:Int?
    var rank:Int?
    
}

struct Pitcher {
    var name:String?
    var team:String?
    var era:Float?
    var win:Int?
    var so:Int?
    var rank:Int?
}

struct Team {
    var name:String?
    var win:Int?
    var draw:Int?
    var lose:Int?
    var diff:Float?
    var rate:Float?
    var rank:Int?
    
}
struct Information {
    
    var away_team:String
    var home_team:String
    var away_pitcher:String
    var home_pitcher:String
    var time:String
    var stardium:String
}
var Schedule = [Information]()
var Schedules = [Schedule]

var players = [Player]()

var hitters = [Hitter]()
var pitchers = [Pitcher]()
var teams = [Team]()
