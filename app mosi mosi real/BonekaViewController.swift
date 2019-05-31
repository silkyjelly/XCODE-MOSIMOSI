//
//  BonekaViewController.swift
//  app mosi mosi real
//
//  Created by Jerry Ming Ho on 20/05/19.
//  Copyright © 2019 Jerry Ming Ho. All rights reserved.
//

import UIKit
import AVFoundation

class BonekaViewController: UIViewController {

    
    @IBOutlet weak var bonekaView: UIView!
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
    
        let sound = Bundle.main.path(forResource: "rock", ofType: "mp3")!
        
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL (fileURLWithPath: sound))
            audioPlayer.numberOfLoops = -1
            
        }catch{
            print(error)
        }
        audioPlayer.play()
        
        UIView.animate(withDuration: 1, animations: {
            self.bonekaView.frame.origin.y -= 500
        }){_ in UIView.animate(withDuration: 0.4,delay: 0,options: [.autoreverse,.repeat], animations: ({
            self.bonekaView.frame.origin.y = 700
            
        })
            )
        }
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
