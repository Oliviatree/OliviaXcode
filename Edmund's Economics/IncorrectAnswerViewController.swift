//
//  IncorrectAnswerViewController.swift
//  Edmund's Economics
//
//  Created by Dean Hester on 2/5/18.
//  Copyright © 2018 Olivia Sykes. All rights reserved.
//

import UIKit

class IncorrectAnswerViewController: UIViewController {
    var points:Int?
    var holdPoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pointsTransfer = points {
            holdPoints = pointsTransfer
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            destination.quizScore = holdPoints
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
