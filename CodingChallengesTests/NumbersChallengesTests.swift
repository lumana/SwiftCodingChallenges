//
//  NumbersChallengesTests.swift
//  CodingChallengesTests
//
//  Created by Luis Umaña on 15/6/23.
//

import XCTest

class NumbersChallengesTests: XCTestCase {
    
    func test_FizzBuzz() {
        
        let numbersClass = NumbersChallenges()
        
        numbersClass.printFizzBuzz()
    }
    
    func test_RandomInRange() {
        
        let numbersClass = NumbersChallenges()
        
        assert((1...5).contains(numbersClass.generateRandomInRange(minimum: 1, maximun: 5)), "Challenge random in range failed")
        assert((8...10).contains(numbersClass.generateRandomInRange(minimum: 8, maximun: 10)), "Challenge random in range failed")
        assert(numbersClass.generateRandomInRange(minimum: 12, maximun: 12) == 12, "Challenge random in range failed")
        assert((12...18).contains(numbersClass.generateRandomInRange(minimum: 12, maximun: 18)), "Challenge random in range failed")
    }
    
    func test_Pow() {
        
        let numbersClass = NumbersChallenges()
        
        assert(numbersClass.myPow(number: 4, power: 3) == Int(pow(Double(4), 3)), "Challenge pow failed")
        assert(numbersClass.myPow(number: 2, power: 8) == Int(pow(Double(2), 8)), "Challenge pow failed")
    }
}
