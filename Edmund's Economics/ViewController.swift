//
//  ViewController.swift
//  Edmund's Economics
//
//  Created by Olivia Sykes on 2017-12-26.
//  Copyright © 2017 Olivia Sykes. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var elephantSound: AVAudioPlayer?
    
    //Questions
    @IBOutlet weak var Question: UILabel!
    
    //Buttons

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    //Correct Answers
    var correctAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //playSound()
        randomQuestions()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Code to play elephant sound
    func playSound()
    {
        NSLog("SoundFileCheck")
        guard let url = Bundle.main.url(forResource:"ElephantCall",withExtension: "mp3") else {return}
        NSLog("SoundFileOK")
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            elephantSound = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let aplayer = elephantSound else { return }
            aplayer.play()
            } catch let error {
            print(error.localizedDescription)
            }
     }


    
    //Randomizer
    func randomQuestions ()
    {
        var randomNumber = arc4random() % 2
        randomNumber += 1

        switch(randomNumber) {

        case 1:
            Question.text = "What does 'absolute advantage' mean?"
            Button1.setTitle("Where a country is able to produce more output than other countries using the same input of factors of production.", for: UIControlState.normal)
            Button2.setTitle("A situation that exists when planned government spending exceeds planned government revenue. A government may run this in order to increase aggregate demand (AD) in the economy.", for: UIControlState.normal)
            Button3.setTitle("Where revenue from the exports of goods and services and income flows is less than the expenditure on the import of goods and services and income flows in a given year.", for: UIControlState.normal)
            Button4.setTitle("A strategy to reduce reliance on the export of a narrow range of exports by re-allocating resources to a wider range of industries.", for: UIControlState.normal)
            correctAnswer = "1"
            break

        case 2:

            Question.text = "What does 'allocative efficiency' mean?"
            Button1.setTitle("Occurs where the price of a good is higher than the equilibrium price, such that the quantity supplied is greater than the quantity demanded.", for: UIControlState.normal)
            Button2.setTitle("Occurs where the marginal social cost of producing a good is equal to the marginal social benefit of the good to society. In different words, it occurs where the marginal cost of producing a good (including any external costs) is equal to the price that is charged to consumers. (P = MC)", for: UIControlState.normal)
            Button3.setTitle("International trade involves the exchange of goods or services between two countries.", for: UIControlState.normal)
            Button4.setTitle("Unemployment that exists when there is insufficient aggregate demand in the economy and wages do not fall to compensate for this. This is usually associated with a slowdown in economic growth or negative growth.", for: UIControlState.normal)
            correctAnswer = "2"
            break

        default:

            break
        }
    }

    //Buttons Action
    
    @IBAction func ButtonOnePressed(_ sender: UIButton) {
        if (correctAnswer == "1") {
            NSLog("Correct!")
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
        }
    }
    
    @IBAction func Button2Action(_ sender: Any) {
        if (correctAnswer == "2") {
            NSLog("Correct!")
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
        }
    }
    
    @IBAction func Button3Action(_ sender: Any) {
        if (correctAnswer == "3") {
            NSLog("Correct!")
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
        }
    }
    
    @IBAction func Button4Action(_ sender: Any) {
        if (correctAnswer == "4") {
            NSLog("Correct!")
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
        }
    }
    
    @IBAction func NextQuestion(_ sender: Any) {
        randomQuestions()
    }    
   
}

