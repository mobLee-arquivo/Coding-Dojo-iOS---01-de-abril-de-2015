//
//  TenisScore.swift
//  Tenniskata
//
//  Created by Lucas Martins on 01/04/2015.
//  Copyright (c) 2015 VSporto. All rights reserved.
//

import Foundation


public class TenisScore{

    var playerOneScore: String = "0"
    var playerTwoScore: String = "0"
    
    func pointToPlayer(player: Int) -> String{
        var score: String = player == 1 ? playerOneScore : playerTwoScore
        var otherScore: String = player == 2 ? playerOneScore : playerTwoScore
        
        if(score == "40" && otherScore != "40" || (score == "ads" && otherScore == "-")){
            score = "0"
            otherScore = "0"
        }else if(score == "0"){
            score = "15"
        }else if(score == "15"){
            score = "30"
        } else if(score == "30"){
            score = "40"
        } else if(score == "Deuce"){
            score = "ads"
            otherScore = "-"
        }
        
        if((score == "40" && otherScore == "40") || (score == "-" && otherScore == "ads")) {
            score = "Deuce"
            otherScore = "Deuce"
        }

        if player == 1 {
            playerOneScore = score
            playerTwoScore = otherScore
        } else {
            playerTwoScore = score
            playerOneScore = otherScore
        }
        
        return score
    }
}