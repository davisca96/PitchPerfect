//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Claire Davis on 5/31/17.
//  Copyright © 2017 iXperience. All rights reserved.
//

import UIKit
import AVFoundation //need to record/play audio

class ViewController: UIViewController {

    @IBOutlet weak var StopButton: UIButton!
    @IBOutlet weak var recordingText: UILabel!
    
    
    
    var recordingSession: AVAudioSession!
    var audioRecorder: AVAudioRecorder!
    
    let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
    
    let currentDateTime = NSDate()
    
    
    let recordingName = String(currentDateTime) + "wav"
    
    let pathArray = [dirPath, recordingName]
    
    let filePath = NSURL.fileURL(withPathComponents: pathArray)
    
    print(filePath)
    
    var session = AVAudioSession.sharedInstance()
    
    session.SetCategor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Record(_ sender: UIButton) {
        //show "recording"
        recordingText.isHidden = false
        StopButton.isHidden = false
    }
}

