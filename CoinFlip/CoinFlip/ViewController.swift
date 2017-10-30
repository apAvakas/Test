//
//  ViewController.swift
//  CoinFlip
//
//  Created by Adrianna Payne on 10/29/17.
//  Copyright © 2017 Adrianna Payne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var decision: UILabel!
    @IBOutlet weak var computerChoice: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        let randomChoice = ["Rock", "Paper", "Scissors"]
        self.computerChoice.text = randomChoice[Int(arc4random_uniform(UInt32(randomChoice.count)))]
        
        let title = sender.title(for: .normal)
        //decision.text = "You clicked \(title ?? "")"
        print("Hello World")
        
        if computerChoice.text == title {
            decision.text = "Tie"
        }
        else if computerChoice.text == "Rock" {
            if title == "Paper"{
                decision.text = "Win"
            }
            else {
                decision.text = "Lose"
            }
        }
        else if computerChoice.text == "Paper" {
            if title == "Scissors" {
                decision.text = "Win"
            }
            else {
                decision.text = "Lose"
            }
        }
        else {
            if title == "Rock" {
                decision.text = "Win"
            }
            else {
                decision.text = "Lose"
            }
        }
    }
}
