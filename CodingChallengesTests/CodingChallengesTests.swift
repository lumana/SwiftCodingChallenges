//
//  CodingChallengesTests.swift
//  CodingChallengesTests
//
//  Created by Luis Alejandro Umana Salas on 16/2/23.
//

import XCTest

class CodingChallengesTests: XCTestCase {
    
    func test_Challenge1() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.areLettersUnique(input: "No duplicates") == true, "Challenge 1 failed")
        assert(stringClass.areLettersUnique(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
        assert(stringClass.areLettersUnique(input: "AaBbCc") == true, "Challenge 1 failed")
        assert(stringClass.areLettersUnique(input: "Hello, world") == false, "Challenge 1 failed")
    }
    
    func test_Challenge2() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.isPalindrome(input: "rotator") == true, "Challenge 2 failed")
        assert(stringClass.isPalindrome(input: "Rats live on no evil star") == true, "Challenge 2 failed")
        assert(stringClass.isPalindrome(input: "Never odd or even") == false, "Challenge 2 failed")
        assert(stringClass.isPalindrome(input: "Hello, world") == false, "Challenge 2 failed")
    }

    func test_Challenge3() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.containsSameCharacters(input1: "abca", input2: "abca") == true, "Challenge 3 failed")
        assert(stringClass.containsSameCharacters(input1: "abc", input2: "cba") == true, "Challenge 3 failed")
        assert(stringClass.containsSameCharacters(input1: "a1 b2", input2: "b1 a2") == true, "Challenge 3 failed")
        assert(stringClass.containsSameCharacters(input1: "abc", input2: "abca") == false, "Challenge 3 failed")
        assert(stringClass.containsSameCharacters(input1: "abc", input2: "Abc") == false, "Challenge 3 failed")
        assert(stringClass.containsSameCharacters(input1: "abc", input2: "cbAa") == false, "Challenge 3 failed")
        assert(stringClass.containsSameCharacters(input1: "abcc", input2: "abca") == false, "Challenge 3 failed")
    }
    
    func test_Challenge4() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.stringContainsAnother(input1: "Hello, world", input2: "Hello") == true, "Challenge 4 failed")
        assert(stringClass.stringContainsAnother(input1: "Hello, world", input2: "WORLD") == true, "Challenge 4 failed")
        assert(stringClass.stringContainsAnother(input1: "Hello, world", input2: "Goodbye") == false, "Challenge 4 failed")
    }
    
    func test_Challenge5() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.countCharacterOcurrence(input: "The rain in Spain", count: "a") == 2, "Challenge 5 failed")
        assert(stringClass.countCharacterOcurrence(input: "Mississippi", count: "i") == 4, "Challenge 5 failed")
        assert(stringClass.countCharacterOcurrence(input: "Hacking with Swift", count: "i") == 3, "Challenge 5 failed")
    }
    
    func test_Challenge6() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.remoteDuplicates(input: "wombat") == "wombat", "Challenge 6 failed")
        assert(stringClass.remoteDuplicates(input: "hello") == "helo", "Challenge 6 failed")
        assert(stringClass.remoteDuplicates(input: "Mississippi") == "Misp", "Challenge 6 failed")
    }
    
    func test_Challenge7() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.condenseWhitespace(input: "a   b   c") == "a b c", "Challenge 7 failed")
        assert(stringClass.condenseWhitespace(input: "    a") == " a", "Challenge 7 failed")
        assert(stringClass.condenseWhitespace(input: "abc") == "abc", "Challenge 7 failed")
    }
    
    func test_Challenge8() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.isStringRotated(input1: "abcde", input2: "eabcd") == true, "Challenge 8 failed")
        assert(stringClass.isStringRotated(input1: "abcde", input2: "cdeab") == true, "Challenge 8 failed")
        assert(stringClass.isStringRotated(input1: "abcde", input2: "abced") == false, "Challenge 8 failed")
        assert(stringClass.isStringRotated(input1: "abc", input2: "a") == false, "Challenge 8 failed")
    }
    
    func test_Challenge9() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.isPangram(input: "The quick brown fox jumps over the lazy dog") == true, "Challenge 9 failed")
        assert(stringClass.isPangram(input: "The quick brown fox jumped over the lazy dog") == false, "Challenge 9 failed")
    }
    
    func test_Challenge10() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.countVowelsAndConsonants(input: "Swift Coding Challenges") == (6,15), "Challenge 10 failed")
        assert(stringClass.countVowelsAndConsonants(input: "Mississippi") == (4,7), "Challenge 10 failed")
    }
    
    func test_Challenge11() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.haveNoMoreThreeDiferenteLetters(input1: "Clamp", input2: "Cramp") == true, "Challenge 11 failed")
        assert(stringClass.haveNoMoreThreeDiferenteLetters(input1: "Clamp", input2: "Crams") == true, "Challenge 11 failed")
        assert(stringClass.haveNoMoreThreeDiferenteLetters(input1: "Clamp", input2: "Grams") == true, "Challenge 11 failed")
        assert(stringClass.haveNoMoreThreeDiferenteLetters(input1: "Clamp", input2: "Grans") == false, "Challenge 11 failed")
        assert(stringClass.haveNoMoreThreeDiferenteLetters(input1: "Clamp", input2: "Clam") == false, "Challenge 11 failed")
        assert(stringClass.haveNoMoreThreeDiferenteLetters(input1: "clamp", input2: "maple") == false, "Challenge 11 failed")
    }
    
    func test_Challenge12() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.findLongestPrefix(input: "swift switch swill swim") == "swi", "Challenge 12 failed")
        assert(stringClass.findLongestPrefix(input: "flip flap flop") == "fl", "Challenge 12 failed")
    }
    
    func test_Challenge13() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.runLenght(input: "aabbcc") == "a2b2c2", "Challenge 13 failed")
        assert(stringClass.runLenght(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 failed")
        assert(stringClass.runLenght(input: "aaAAaa") == "a2A2a2", "Challenge 13 failed")
    }
    
    func test_Challenge15() {
        
        let stringClass = StringsChallenges()
        
        assert(stringClass.reverseWordsOfString(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "Challenge 15 failed")
        assert(stringClass.reverseWordsOfString(input: "The quick brown fox") == "ehT kciuq nworb xof", "Challenge 15 failed")
    }

}
