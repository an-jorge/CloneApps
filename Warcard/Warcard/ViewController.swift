//
//  ViewController.swift
//  Warcard
//
//  Created by António Jorge on 8/24/19.
//  Copyright © 2019 António Jorge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var scorePlayer = 0
    var scoreCPU = 0
    
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rigthImage: UIImageView!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leftImage.image = UIImage(named: "back")
        rigthImage.image = UIImage(named: "back")
    }

    @IBAction func dealButton(_ Sender: Any) {
        let leftCardRandom = Int.random(in: 2...14)
        let rigthCardRandom = Int.random(in: 2...14)
        
        leftImage.image = UIImage(named: "card\(leftCardRandom)")
        rigthImage.image = UIImage(named: "card\(rigthCardRandom)")
        
        if leftCardRandom > rigthCardRandom {
            scorePlayer += 1
            playerLabel.text = String(scorePlayer)
        } else if leftCardRandom < rigthCardRandom {
            scoreCPU += 1
            cpuLabel.text = String(scoreCPU)
        }
    }
}

