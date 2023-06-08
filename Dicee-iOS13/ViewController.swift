//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        diceImageView1.alpha = 0.5
    }

    /*
     Multiline comment
     String interpolation is nice
     Press button to randomly replace the two dices' images
     */
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("button \(sender.buttonType) pressed")
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")] //array of images
        diceImageView1.image = diceArray.randomElement() //randomly chooses an element from the array
        diceImageView2.image = diceArray.randomElement()
    }
    
}

