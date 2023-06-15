//
//  NumbersChallenges.swift
//  CodingChallenges
//
//  Created by Luis Umaña on 15/6/23.
//

import Foundation

class NumbersChallenges {
    
    func printFizzBuzz() {
        
        for number in 1...100 {
            if number % 3 == 0 && number % 5 == 0 {
                print("\(number) Fizz Buzz")
            }
            else if number % 3 == 0 {
                print("\(number) Fizz")
            } else if number % 5 == 0 {
                print("\(number) Buzz")
            } else {
                print(number)
            }
        }
    }
    
    func generateRandomInRange(minimum: Int, maximun: Int) -> Int {
        return Int.random(in: minimum...maximun)
    }
    
    func myPow(number: Int, power: Int) -> Int {
        
        guard number > 0, power > 0 else { return 0 }
        
        var result = number
        
        for _ in 1..<power  {
            result = result * number
        }
        
        return result
    }
    
}
