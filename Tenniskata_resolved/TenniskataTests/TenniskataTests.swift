//
//  TenniskataTests.swift
//  TenniskataTests
//
//  Created by Lucas Martins on 01/04/2015.
//  Copyright (c) 2015 VSporto. All rights reserved.
//

import UIKit
import XCTest

class TenniskataTests: XCTestCase {
    
    var tenisScore: TenisScore = TenisScore()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        tenisScore = TenisScore()
        super.tearDown()
    }
    
    func testPlayerOneScore() {
        let pScore = tenisScore.pointToPlayer(1)
        XCTAssert(pScore == "15", "Pass")
    }
    
    func testPlayerOneDoubleScore(){
        tenisScore.pointToPlayer(1)
        let pScore = tenisScore.pointToPlayer(1)
        XCTAssert(pScore == "30", "Pass")
    }
    
    func testPlayerOneTripleScore(){
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(1)
        let pScore = tenisScore.pointToPlayer(1)
        XCTAssert(pScore == "40", "Pass")
    }
    
    func testPlayerOneFinalScore(){
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(1)
                tenisScore.pointToPlayer(2)
        let pScore = tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.playerTwoScore
        XCTAssert(pScore == "0", "Pass")
        XCTAssert(pTwoScore == "0", "Pass")
    }
    
    func testPlayerTwoScore() {
        let pScore = tenisScore.pointToPlayer(2)
        XCTAssert(pScore == "15", "Pass")
    }
    
    func testPlayerTwoDoubleScore(){
        tenisScore.pointToPlayer(2)
        let pScore = tenisScore.pointToPlayer(2)
        XCTAssert(pScore == "30", "Pass")
    }
    
    func testPlayerTwoTripleScore(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(2)
        let pScore = tenisScore.pointToPlayer(2)
        XCTAssert(pScore == "40", "Pass")
    }
    
    func testPlayerTwoFinalScore(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(2)
                        tenisScore.pointToPlayer(1)
        let pScore = tenisScore.pointToPlayer(2)
        let pOneScore = tenisScore.playerOneScore
        XCTAssert(pScore == "0", "Pass")
        XCTAssert(pOneScore == "0", "Pass")
    }
    
    func testDeuce(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)

        let pOneScore = tenisScore.pointToPlayer(1)
        XCTAssert(pOneScore == "Deuce", "Pass")
    }
    
    func testTwoDeuce(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        
        let pOneScore = tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.playerTwoScore
        XCTAssert(pOneScore == "Deuce", "Pass")
        XCTAssert(pTwoScore == "Deuce", "Pass")
    }
    
    func testOneAdvantage(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        
        tenisScore.pointToPlayer(1)
        let pOneScore = tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.playerTwoScore
        XCTAssert(pOneScore == "ads", "Pass")
        XCTAssert(pTwoScore == "-", "Pass")
    }
    
    func testTwoAdvantage(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        
        tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.pointToPlayer(2)
        let pOneScore = tenisScore.playerOneScore
        XCTAssert(pTwoScore == "ads", "Pass")
        XCTAssert(pOneScore == "-", "Pass")
    }
    
    func testOneAdvantageOut(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.pointToPlayer(2)
        let pOneScore = tenisScore.playerOneScore
        XCTAssert(pTwoScore == "Deuce", "Pass")
        XCTAssert(pOneScore == "Deuce", "Pass")
    }
    
    func testTwoAdvantageOut(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        let pOneScore = tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.playerTwoScore
        XCTAssert(pTwoScore == "Deuce", "Pass")
        XCTAssert(pOneScore == "Deuce", "Pass")
    }
    
    func testOneGame(){
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(2)
        
        tenisScore.pointToPlayer(1)
        tenisScore.pointToPlayer(1)
        let pOneScore = tenisScore.pointToPlayer(1)
        let pTwoScore = tenisScore.playerTwoScore
        XCTAssert(pTwoScore == "0", "Pass")
        XCTAssert(pOneScore == "0", "Pass")
    }
    

}
