//
//  ViewController.swift
//  Soundboard-App
//
//  Created by Tim Hoffman on 5/3/18.
//  Copyright © 2018 Tim Hoffman. All rights reserved.
//

import UIKit
import SwiftySound

class ViewController: UIViewController {

    //var player : AVAudioPlayer?
    
    
   
    var soundArray = ["Music", "Thunder", "Trumpets", "Crash", "Laugh"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func soundBtnWasPressed(_ sender: UIButton) {
  
        let url = soundArray[sender.tag - 1]
        
        Sound.play(file: url, fileExtension: "wav", numberOfLoops: 0)
        

        
    }

    
    
}

