//
//  ViewController.swift
//  ant
//
//  Created by 陳曉潼 on 2024/8/28.
//

import UIKit
import AVFAudio

    
    class ViewController: UIViewController {
        
        //製作合成器
        let synthesizer = AVSpeechSynthesizer()
        
        // 製作主角與交通工具
        @IBOutlet weak var nameTextField: UITextField!
        @IBOutlet weak var transportationTextField: UITextField!
        @IBOutlet weak var rideTextField: UITextField!
        @IBOutlet weak var showMessage1: UITextView!
        @IBOutlet weak var showMessage2: UITextView!
        @IBOutlet weak var showMessage3: UITextView!
        @IBOutlet weak var showMessage4: UITextView!
        @IBOutlet weak var showMessage5: UITextView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        
        @IBAction func speak(_ sender: Any) {
            let message1:String = ("為什麼\(nameTextField.text!)走過沙漠上面卻沒有腳印")
            let message2:String = ("因為他\(rideTextField.text!)\(transportationTextField.text!)")
            let message3:String = ("為什麼不用開門或敲門就知道\(nameTextField.text!)在家")
            let message4:String = ("因為他的\(transportationTextField.text!)停在旁邊")
            showMessage1.text = message1
            showMessage2.text = message2
            showMessage3.text = message3
            showMessage4.text = message4
            showMessage5.text = "呵呵呵！"
            
            
            let utterance = AVSpeechUtterance(string: showMessage1.text)
            utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            utterance.rate = 0.5
            synthesizer.speak(utterance)
            
            let utterance2 = AVSpeechUtterance(string: showMessage2.text)
            utterance2.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            utterance2.rate = 0.5
            utterance2.pitchMultiplier = 2
            synthesizer.speak(utterance2)
            
            let utterance3 = AVSpeechUtterance(string: showMessage3.text)
            utterance3.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            utterance3.rate = 0.5
            synthesizer.speak(utterance3)
            
            let utterance4 = AVSpeechUtterance(string: showMessage4.text)
            utterance4.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            utterance4.rate = 0.5
            utterance4.pitchMultiplier = 2
            synthesizer.speak(utterance4)
            
            let utterance5 = AVSpeechUtterance(string: showMessage5.text)
            utterance5.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            utterance5.rate = 0.5
            synthesizer.speak(utterance5)
        }
    }
    

