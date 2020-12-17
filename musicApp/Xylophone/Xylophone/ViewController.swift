//
//  ViewController.swift
//  Xylophone
//
//  Created by Mustafa Mehdi on 2018-09-01.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    let myAudioFiles = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func notePressed(_ sender: UIButton) {
        
    playfile(buttonTag: sender.tag - 1)
    
    }
    
    func playfile(buttonTag: Int)
    {
        let soundURL = Bundle.main.url(forResource: myAudioFiles[buttonTag] , withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }catch {
            print(error)
        }
        audioPlayer.play()
        
        
    }
}

