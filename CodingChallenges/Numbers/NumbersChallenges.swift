//
//  NumbersChallenges.swift
//  CodingChallenges
//
//  Created by Luis Umaña on 15/6/23.
//

import Foundation

class NumbersChallenges {
    
    func FizzBuzz() {
        
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
    
}
