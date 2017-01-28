//
//  main.swift
//  Bingo
//
//  Created by Liam Byrne on 2017-01-16.
//  Copyright © 2017 Liam Byrne. All rights reserved.
//

import Foundation

var Game = Response()

// Declare an array of integers to store the user's queue of numbers
var queue = [0, 0, 0, 0, 0]

// Declare an array of bools to store the selected number data
var selected = [false, false, false, false, false]

var scores = [Int]()

// Declare variables to count and calculate score
var score = 0
var total = 0
var temp = 0
var hold = 0
var choice = 0
var number = 0
var number2 = 0

// Declare a variable to count up for loops
var index = 0
// Declare a variable to store data from rolled dice
var roll = Int(arc4random_uniform(10))

choice = Game.startGame()

// To play
if choice == 0 {
    temp = 0
    
    // Section to take user input and put it into array
    while temp <= 4 {
        
        // Declare a variable to temperarily store data from command line
        print("Type a number to add to your queue - (Number \(temp+1))")
        if let input = Int(readLine(strippingNewline: true)!) {
            if input >= 2 && input <= 12 {
                queue[temp] = input
                total = total + input
                temp += 1
            }
        }
    }
    
    temp = 0
    
    for (index, value) in queue.enumerated() {
        roll = Int(arc4random_uniform(10) + 2)
        
        for (index, value) in queue.enumerated() {
            if roll == queue[index] {
                if selected[index] == true {
                    selected[index] = false
                } else {
                    selected[index] = true
                }
            }
        }
    }
    
    
    for (index, value) in queue.enumerated() {
        if selected[index] == true {
            temp = queue[index]
            total = total - temp
        }
    }
    
    temp = 0
    
    print("Your score is \(total)")
    // To test
} else if choice == 1 {
    temp = 0
    while temp == 0 {
        print("How many times would you like to test? (1 - 1,000,000)")
        if let testNumber = Int(readLine(strippingNewline: true)!) {
            if testNumber >= 1 && testNumber <= 1000000 {
                number = testNumber
                temp = 1
            }
        }
    }
    
    temp = 0
    // Section to take user input and put it into array
    while temp <= 4 {
        
        // Declare a variable to temperarily store data from command line
        print("Type a number to add to your queue for testing - (Number \(temp+1))")
        if let inputTest = Int(readLine(strippingNewline: true)!) {
            if inputTest >= 2 && inputTest <= 12 {
                queue[temp] = inputTest
                total = total + inputTest
                number2 = total
                temp += 1
            }
        }
    }
    temp = 0
    
    while temp < number {
        
        for (index, value) in queue.enumerated() {
            roll = Int(arc4random_uniform(10) + 2)
            print("Roll: \(roll)")
            
            for (index, value) in queue.enumerated() {
                if roll == queue[index] {
                    if selected[index] == true {
                        selected[index] = false
                    } else {
                        selected[index] = true
                    }
                }
            }
        }
        
        for (index, value) in queue.enumerated() {
            if selected[index] == true {
                hold = queue[index]
                total = total - hold
            }
        }
        
        
        print("Total: \(total)")
        print("Scores: \(scores)")
        scores.append(total)
        temp += 1
        total = number2
    }
    
    
    
}
