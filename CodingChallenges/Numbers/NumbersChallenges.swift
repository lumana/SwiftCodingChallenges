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
    
    func swapNumbers(a: Int, b: Int) -> (Int, Int) {
        
        /*a=a+b
        b=a-b
        a=a-b*/
        
        return (b, a)
    }
    
    func isPrime(number: Int) -> Bool {
        
        guard number > 1 else { return false }
        
        for i in 2 ..< number {
            if number % i == 0{
                return false
            }
        }
        
        return true
    }
    
    func countBinaryOnes(number: Int) -> Int {
        
        let binaryString = String(number, radix: 2) // Convierte el numero a binario en un string
        let numberOfOnes = binaryString.filter{
            (char: Character) -> Bool in char == "1"
        }.count // Cuenta los 1 en el string
        
        return numberOfOnes
    }
    
    func isOnlyNumbersInString(input: String) -> Bool {
        
        /*for letter in input {
            if Int(String(letter)) == nil {
                return false
            }
        }
        
        return true*/
        
        //Si hay algo diferente a un número entre 0-9 (inverted) es false
        return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
    }
    
    func addNumbersInsideString(input: String) -> Int {
        var result = 0
        var currentNumber = ""
        
        for letter in input {
            let strLetter = String(letter)
            
            if Int(strLetter) != nil {
                currentNumber += strLetter
            } else {
                result += Int(currentNumber) ?? 0
                currentNumber = ""
            }
            
        }
        
        result += Int(currentNumber) ?? 0
        
        return result
    }
    
    func calculateSquareRoot(number: Int) -> Int {
        //A number raised to the power of 0.5, you get its square root.
        return Int(pow(Double(number), 0.5))
    }
    
    func subtractWithoutSubtract(subtract: Int, from: Int) -> Int {
        return from + (~subtract + 1)
    }
    
}
