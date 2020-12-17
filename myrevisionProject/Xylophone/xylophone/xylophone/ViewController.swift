//
//  ViewController.swift
//  xylophone
//
//  Created by Mustafa Mehdi on 2018-12-26.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController , AVAudioPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var audioPlayer : AVAudioPlayer!

    @IBAction func btnPlay(_ sender: UIButton) {
        
        switch sender.tag
        {
        case 1:
            print(sender.tag)
            playSound(SoundNum: sender.tag)
        case 2:
            playSound(SoundNum: sender.tag)
        case 3:
           playSound(SoundNum: sender.tag)
        case 4:
            playSound(SoundNum: sender.tag)
        case 5:
            playSound(SoundNum: sender.tag)
        case 6:
            playSound(SoundNum: sender.tag)
        case 7:
            playSound(SoundNum: sender.tag)
        default:
            playSound(SoundNum: sender.tag)
        }
    }
    
    func playSound(SoundNum: Int)
    {
        let sound = Bundle.main.url(forResource: "note\(SoundNum)", withExtension: "wav")
       
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: sound!)
            
        }catch{
          print(error)
        }
       // audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
}

