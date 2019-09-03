//
//  ViewController.swift
//  RandomDice
//
//  Created by mini03 on 8/3/19.
//  Copyright © 2019 TeamLuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let listImages:[String] = ["one-dice","two-dice","three-dice","four-dice","five-dice","six-dice"]
    @IBOutlet weak var imgDice1: UIImageView!
    @IBOutlet weak var imgDice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         onRoll()
        // Do any additional setup after loading the view.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
             onRoll()
        }
    }

    @IBAction func onRollPressed(_ sender: Any) {
        onRoll()
    }
    
    func onRoll(){
        let dice1: Int = Int.random(in: 0..<listImages.count);
        let dice2: Int = Int.random(in: 0..<listImages.count);
        imgDice1.image = UIImage(named: listImages[dice1])
        imgDice2.image = UIImage(named: listImages[dice2])
    
    }
}

