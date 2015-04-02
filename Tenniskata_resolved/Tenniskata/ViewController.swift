//
//  ViewController.swift
//  Tenniskata
//
//  Created by Lucas Martins on 01/04/2015.
//  Copyright (c) 2015 VSporto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var player1: UIButton!
    @IBOutlet weak var player2: UIButton!
    
    var tenisScore: TenisScore = TenisScore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scorePlayer1(sender: AnyObject) {
        tenisScore.pointToPlayer(1)
        self.updateScreen()
    }

    @IBAction func scorePlayer2(sender: AnyObject) {
        tenisScore.pointToPlayer(2)
        self.updateScreen()
    }
    
    func updateScreen(){
        let player1 = tenisScore.playerOneScore
        let player2 = tenisScore.playerTwoScore
        self.label.text = "p1: \(player1) x p2: \(player2)"
    }
}

