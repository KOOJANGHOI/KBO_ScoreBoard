//
//  ViewController.swift
//  NSURLExample
//
//  Created by KIMTAEHO on 2017. 5. 19..
//  Copyright © 2017년 KIMTAEHO. All rights reserved.
//

import UIKit

struct SongInfo{
    var title:String?
    var image:String?
}

struct Player {
    var id:Int?
    var hit:Int?
    var number:Int?
}

class ViewController: UIViewController {

    //let urlStr = "http://lorempixel.com/800/600/cats/"
    //let urlStr = "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/topsongs/limit=25/json"
    let urlStr = "http://192.168.0.10:8000/hitters/"
    var songs = [SongInfo]()
    
    var queue : OperationQueue!
    var str:String = ""

    
    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    /*
        // Do any additional setup after loading the view, typically from a nib.
        queue = OperationQueue()
        queue.addOperation {
            let url = URL(string: self.urlStr)!
            let data = try! Data(contentsOf: url)
            let image = UIImage(data: data)
            OperationQueue.main.addOperation {
                self.imageView.image = image
            }
        }
      */
    
        let url = URL(string: urlStr)!
        let data = try! Data(contentsOf: url)
        //JSON PARSING
        if let result = try! JSONSerialization.jsonObject(with: data, options: []) as? [ [String:Any] ]
            
            {
//            let feed = result["feed"] as? [String:Any],
//            let entry = feed["entry"] as? [ [String:Any]]{
//            
//            for one in entry {
//                var song = SongInfo()
//                if let titleNode = one["title"] as? [String:AnyObject],
//                    let title = titleNode["label"] as? String {
//                    song.title = title;
//                    str.append(title)
//                }
//                
//                if let imageNode = one["im:image"] as? [
//                    [String:AnyObject] ],
//                    let image = imageNode[0]["label"] as?
//                    String {
//                    song.image = image;
//                    str.append(image)
//                }
//                songs.append(song)
                
                for one in result {
                    var player = Player()
                    player.id = one["id"] as! Int?
                    player.hit = one["hit"] as! Int?
                    player.number = one["number"] as! Int?
                    
                    players.append(player)
                }
                TextView.text = String(describing: players[0].hit!)
                
//                for one in players {
//                    TextView.text = String(describing: one.id)
//                
//                }
                
            }
        
     //   TextView.text=str
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

