//
//  ViewController.swift
//  Soundboard-App
//
//  Created by Tim Hoffman on 5/3/18.
//  Copyright © 2018 Tim Hoffman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    var soundArray = ["Music", "Thunder", "Trumpets", "Crash", "Laugh"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func soundBtnWasPressed(_ sender: UIButton) {
        playSound(soundFileName: soundArray[sender.tag - 1])
    
    }

    func playSound(soundFileName: String) {
        let url = Bundle.main.url(forResource: soundFileName, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        } catch {
            print(error)
        }
    }

}

