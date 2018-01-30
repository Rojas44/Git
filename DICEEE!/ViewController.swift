//
//  ViewController.swift
//  DICEEE!
//
//  Created by Mac on 12/14/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var randomDiceUndex1 : Int = 0
    var randomDiceindex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var diceImaheView2: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButton(_ sender: Any) {
       
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceUndex1 = Int(arc4random_uniform(6))
        randomDiceindex2 = Int(arc4random_uniform(6))
        
        DiceImageView1.image = UIImage(named: diceArray[randomDiceUndex1])
        diceImaheView2.image = UIImage (named: diceArray[ randomDiceindex2])

    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) { updateDiceImages()
    }
}

