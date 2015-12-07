//
//  ViewController.swift
//  Swipes
//
//  Created by Ivaylo Todorov on 28.11.15 г..
//  Copyright © 2015 г. Ivaylo Todorov. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["barr", "gun", "mp5", "rapid", "shot"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
           }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.subtype == UIEventSubtype.MotionShake {
            
           var randomNumber = Int(arc4random_uniform(UInt32(sounds.count)))
            
            var filelocation = NSBundle.mainBundle().pathForResource(sounds[randomNumber], ofType: "mp3")
         
            do {
                try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: filelocation!))
                
                player.play()
            
            } catch {}
    
        } 
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

