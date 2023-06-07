//
//  Strings.swift
//  CodingChallenges
//
//  Created by Luis Alejandro Umana Salas on 16/2/23.
//

import Foundation

extension String {
    func fuzzyContains(input: String) -> Bool {
        
        
        let result = self.lowercased().ranges(of: input.lowercased())
        
        if result.count == 0
        {
            return false
        }
        else
        {
            return true
        }
    }
}

class StringsChallenges {
    
    //1- Are the letters unique?
    func areLettersUnique(input: String) -> Bool {
        
        /*var uniqueArray = [String]()
         
         for letter in input {
         if !uniqueArray.contains(String(letter)){
         uniqueArray.append(String(letter))
         }
         }
         
         if uniqueArray.count == input.count
         {
         return true
         }
         else
         {
         return false
         }*/
        
        return Set(input).count == input.count
    }
    
    //2-Is a string a palindrome?
    func isPalindrome(input: String) -> Bool {
        
        let rever = String(input.reversed())
        return input.lowercased() == rever.lowercased()
    }
    
    //3- Do two strings contain the same characters?
    func containsSameCharacters(input1: String, input2: String) -> Bool {
        
        return input1.sorted() == input2.sorted()
    }
    
    //4- Does one string contain another? (Extension at the top)
    func stringContainsAnother(input1: String, input2: String) -> Bool {
        
        return input1.fuzzyContains(input: input2)
    }
    
    //5 - Count the characters
    func countCharacterOcurrence(input: String, count: Character) -> Int {
        
        var letterCount = 0
        
        for letter in input {
            if letter == count {
                letterCount += 1
            }
        }
        
        return letterCount
        
        /*return input.reduce(0) {
         $1 == count ? $0 + 1 : $0
         }*/
        
        /*let modified = input.replacingOccurrences(of: count, with:"")
         return input.count - modified.count*/
    }
    
    //6- Remove duplicate letters from a string
    func remoteDuplicates(input: String) -> String {
        
        var used = [Character]()
        
        for letter in input {
            if !used.contains(letter) {
                used.append(letter)
            }
        }
        return String(used)
        
        /*var used = [Character: Bool]()
         let result = string.filter {
         used.updateValue(true, forKey: $0) == nil
         }*/
    }
    
    //7- Condense whitespace
    func condenseWhitespace(input: String) -> String{
        
        var result = [Character]()
        var seenSpace = false
        
        for letter in input {
            if letter == " " {
                if !seenSpace {
                    result.append(letter)
                }
                seenSpace = true
            }
            else {
                result.append(letter)
                seenSpace = false
            }
        }
        
        return String(result)
        
        //return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
    }
    
    //8- String is rotated
    func isStringRotated(input1: String, input2: String) -> Bool {
        
        guard input1.count == input2.count else { return false }
        
        let combinedString = input1 + input1
        return combinedString.contains(input2)
    }
    
    //9- Find pangrams
    func isPangram(input: String) -> Bool {
        
        let set = Set(input.lowercased()) //remove duplicates
        let letters = set.filter { $0 >= "a" && $0 <= "z" }// filter letters in abecedary
        
        return letters.count == 26
    }
    
    //10- Vowels and consonants
    func countVowelsAndConsonants(input: String) -> (vowels: Int, consonants: Int) {
        
        let vowels = "aeiou"
        let consonants = "bcdfghjklmnpqrstvwxyz"
        
        var vowelCount = 0
        var consonantCount = 0
        
        for letter in input.lowercased(){
            
            if vowels.contains(letter){
                vowelCount += 1
            }else if consonants.contains(letter){
                consonantCount += 1
            }
        }
        
        return (vowelCount, consonantCount)
    }
    
    //11- Three different letters
    func haveNoMoreThreeDiferenteLetters(input1: String, input2: String) -> Bool {
        
        guard input1.count == input2.count else { return false }
        
        let firstArray = Array(input1)
        let secondArray = Array(input2)
        var differences = 0
        
        //clamp Grans
        
        for (index, letter) in firstArray.enumerated() {
            
            if secondArray[index] != letter {
                differences += 1
            }
            
            if differences == 4
            {
                return false
            }
            
        }
        
        return true
    }
    
    //12- Find longest prefix
    func findLongestPrefix(input: String) -> String {
        
        let words = input.components(separatedBy: " ")
        guard let firstWord = words.first else { return "" }
        
        var currentPrefix = ""
        var resultPrefix = ""
        
        for letter in firstWord {
            
            currentPrefix.append(letter)
            
            for word in words {
                if !word.hasPrefix(currentPrefix){
                    return resultPrefix
                }
            }
            
            resultPrefix = currentPrefix
        }
        
        
        return resultPrefix
    }
    
    //13- Run-length
    func runLenght(input: String) -> String {
        
        var currentLetter: Character?
        var letterCount = 0
        var result = ""
        
        for letter in input {
            
            if currentLetter != letter {
                
                if currentLetter != nil {
                 result.append("\(String(describing: currentLetter!))\(letterCount)")
                }
                
                currentLetter = letter
                letterCount = 1
            } else {
                letterCount += 1
            }
        }
        
        if let current = currentLetter {
            result.append("\(String(describing: current))\(letterCount)")
        }
        
        return result
    }
    
    //14- String permutations
    func stringPermutations(string: String, current: String = "") {
        
        let length = string.count
        let strArray = Array(string)
        if (length == 0) {
            // there's nothing left to re-arrange; print the result
            print(current)
            print("******")
        } else {
            print(current)
            // loop through every character
            for i in 0 ..< length {
                // get the letters before me
                let left = String(strArray[0 ..< i])
                // get the letters after me
                let right = String(strArray[i+1 ..< length])
                // put those two together and carry on
                stringPermutations(string: left + right, current: current +
                            String(strArray[i]))
            }
        }
    }
    
    //15- Reverse the words in a string
    func reverseWordsOfString(input: String) -> String {
        let words = input.components(separatedBy: " ")
        let wordsReversed = words.map{String($0.reversed())}
        return wordsReversed.joined(separator: " ")
    }
}
