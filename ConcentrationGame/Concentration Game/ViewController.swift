//
//  ViewController.swift
//  Concentration Game
//
//  Created by student on 19/01/19.
//  Copyright © 2019 mahe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var emojiChoices=["🤔","🤤","👻","🎃","💀","☠️"]
    
   
    @IBOutlet var cardButton: [UIButton]!
   
    
    @IBAction func touchCard(_ sender: UIButton) {
       //flipCard(withEmoji:"🤔",on:sender)
        if let cardNumber = cardButton.index(of:sender){
            flipCard(withEmoji:emojiChoices[cardNumber],on:sender)
        } else {
            print("Error")
        }
    }
    func flipCard(withEmoji emoji: String,on button:UIButton){
        if button.currentTitle==emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor=#colorLiteral(red: 0.1707277, green: 0.1709245741, blue: 0.854013741, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor=#colorLiteral(red: 0.15338853, green: 0.1720397472, blue: 1, alpha: 1)
        }
    }

}
