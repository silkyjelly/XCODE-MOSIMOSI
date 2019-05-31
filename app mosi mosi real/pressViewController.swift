//
//  pressViewController.swift
//  app mosi mosi real
//
//  Created by Jerry Ming Ho on 21/05/19.
//  Copyright © 2019 Jerry Ming Ho. All rights reserved.
//

import UIKit
import AVFoundation

class pressViewController: UIViewController {
    @IBOutlet weak var pressView: UIButton!
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "music", ofType: "mp3")!
        
        do{
           
            audioPlayer = try AVAudioPlayer(contentsOf: URL (fileURLWithPath: sound))
            audioPlayer.numberOfLoops = -1
        
            
        }catch{
            print(error)
        }
        audioPlayer.play()
        
        
        UIButton.animate(withDuration: 0, animations: {
            self.pressView.frame.origin.y -= 150
        }){_ in UIButton.animate(withDuration: 0.4,delay: 0,options: [.autoreverse,.repeat], animations: ({
            self.pressView.frame.origin.y = 700

        })
            )
            
            
        }
        
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        audioPlayer.stop()
        
        performSegue(withIdentifier: "firstSegue", sender: nil)
        
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
