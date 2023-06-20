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
    
    func test_swapNumbers() {
        
        let numbersClass = NumbersChallenges()
        
        assert(numbersClass.swapNumbers(a: 2, b: 6) == (6,2), "Challenge swap failed")
    }
    
    func test_isPrime() {
        
        let numbersClass = NumbersChallenges()
        
        assert(numbersClass.isPrime(number: 11) == true, "Challenge is prime failed")
        assert(numbersClass.isPrime(number: 13) == true, "Challenge is prime failed")
        assert(numbersClass.isPrime(number: 4) == false, "Challenge is prime failed")
        assert(numbersClass.isPrime(number: 9) == false, "Challenge is prime failed")
        assert(numbersClass.isPrime(number: 16777259) == true, "Challenge is prime failed")
    }
    
    func test_countBinaryOnes() {
        
        let numbersClass = NumbersChallenges()
        
        assert(numbersClass.countBinaryOnes(number: 12) == 2, "Challenge count binary ones failed")
        assert(numbersClass.countBinaryOnes(number: 28) == 3, "Challenge count binary ones failed")
    }
    
    func test_isOnlyNumbersInString() {
        
        let numbersClass = NumbersChallenges()
        
        assert(numbersClass.isOnlyNumbersInString(input: "01010101") == true, "Challenge is only numbers in string failed")
        assert(numbersClass.isOnlyNumbersInString(input: "123456789") == true, "Challenge is only numbers in string failed")
        assert(numbersClass.isOnlyNumbersInString(input: "9223372036854775808") == true, "Challenge is only numbers in string failed")
        assert(numbersClass.isOnlyNumbersInString(input: "1.01") == false, "Challenge is only numbers in string failed")
    }
    
    func test_addNumbersInsideString() {
        
        let numbersClass = NumbersChallenges()
        
        assert(numbersClass.addNumbersInsideString(input: "a1b2c3") == 6, "Challenge add numbers inside string failed")
        assert(numbersClass.addNumbersInsideString(input: "a10b20c30") == 60, "Challenge add numbers inside string failed")
        assert(numbersClass.addNumbersInsideString(input: "h8ers") == 8, "Challenge add numbers inside string failed")
    }
    
    func test_calculateSquareRoot() {
        let numbersClass = NumbersChallenges()
       
        assert(numbersClass.calculateSquareRoot(number: 9) == 3, "Challenge square root failed")
        assert(numbersClass.calculateSquareRoot(number: 16777216) == 4096, "Challenge square root failed")
        assert(numbersClass.calculateSquareRoot(number: 16) == 4, "Challenge square root failed")
        assert(numbersClass.calculateSquareRoot(number: 15) == 3, "Challenge square root failed")
    }
    
    func test_subtractWithoutSubtract() {
        
        let numbersClass = NumbersChallenges()
       
        assert(numbersClass.subtractWithoutSubtract(subtract: 5, from: 9) == 4, "Challenge subtract failed")
        assert(numbersClass.subtractWithoutSubtract(subtract: 10, from: 30) == 20, "Challenge subtract failed")
    }
}
