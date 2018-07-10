//
//  ViewController.swift
//  Audio_in_app
//
//  Created by Filip on 10.07.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    
    
    
    

    @IBAction func playButton(_ sender: Any) {
        
         player.play()

    }
    
    @IBAction func pauseButton(_ sender: Any) {
        
        if player.isPlaying {
            
            player.pause()
        }
        
    }
    
    @IBAction func restartButton(_ sender: Any) {
        
        
        if player.isPlaying {
            
            player.currentTime = 0
            player.play()
            
        }
        
    }
    
    @IBAction func slider(_ sender: Any) {
        
        player.volume = sliderOutlet.value
       
    
    }
    
    @IBOutlet weak var sliderOutlet: UISlider!

    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let audioPath = Bundle.main.path(forResource: "Bach", ofType: "mp3")
        
        do {
            
           player = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Bach", ofType: "mp3")!))
    
            
        } catch {
            
            print(error)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

