//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender)
        sender.alpha = 0.5
        sender.tintColor = .clear
        playSound(pressedKey: sender.currentTitle!)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            //Bring's sender's opacity back up to fully opaque.
            
            UIView.animate(withDuration: 0.3) {
                      sender.alpha = 1.0
                  }
        }
//        sender.alpha = 1.0
//        sender.backgroundColor = UIColor
    }
    
    func playSound(pressedKey: String) {
//        print("\(pressed_key)")
        let url = Bundle.main.url(forResource: "\(pressedKey)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

        
                
    }
}



