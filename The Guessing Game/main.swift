//
//  main.swift
//  The Guessing Game
//
//  Created by Sawyer Cherry on 8/20/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//



import Foundation


var Repeat = ""
repeat {
    
    print("Guess the Number I'm thinking between 1 and 100!")
    let randomNumber = Int(arc4random_uniform(99) + 1)
    var numberOfTries = 10
    var guessedNumber: Int? = nil
    
    repeat {
        
        repeat {
            var input = readLine()!
            if input == "Give Me Da Wae" {
                print("Da Wae is \(randomNumber)")
            }
            input =  readLine()!
        
            if let number = Int(input) {
                if number >= 1 && number <= 100 {
                    guessedNumber = number
                } else {
                    print("Please Enter A Valid Number!")
                    guessedNumber = nil
                }
            } else {
                print("Please Enter A Valid Number!")
                guessedNumber = nil
            }
            
        } while guessedNumber == nil
        
        guard let guessedNumber = guessedNumber else {
            fatalError()
        }
        
        if guessedNumber == randomNumber {
            print("Your guess is correct, You Win! Cookies and Cakes for all the mates!")
        }
        
        if guessedNumber > randomNumber {
            print("Your Guess Was Too High!")
        }
        if guessedNumber < randomNumber {
            print("Your Guess Was Too Low")
        }
        numberOfTries -= 1
        print("You have \(numberOfTries) tries left")
        if guessedNumber != randomNumber {
            print("Please guess another number!")
        }
    } while numberOfTries > 0 && guessedNumber! != randomNumber
    
    print(" You now have the Option to Quit or Restart!")
    Repeat = readLine()!
    
    
} while Repeat.lowercased() == "yes"











