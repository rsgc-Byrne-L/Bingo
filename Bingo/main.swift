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
var final : Double = 0

// Declare a variable to count up for loops
var index = 0
// Declare a variable to store data from rolled dice
var roll = Int(arc4random_uniform(10))

choice = Game.startGame()

// To play
if choice == 0 {
    
    // Call the "userInput" fuction in the "Response" class
    queue = Game.getInput()
    // Call the "getTotal" fuction in the "Response" class
    total = Game.getTotal(queue: queue)
    
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
    
    // Call the "userInput" fuction in the "Response" class
    queue = Game.getInput()
    // Call the "getTotal" fuction in the "Response" class
    total = Game.getTotal(queue: queue)
    number2 = total
    
    while temp < number+1 {
        
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
                hold = queue[index]
                total = total - hold
            }
        }
        
        
        print("Total: \(total)")
        scores.append(total)
        print("Scores: \(scores)")
        temp += 1
        total = number2
    }
    
    final = Game.getAverage(queue: scores, times: number)
    print("Your average score after \(number) tests is \(final)!")
    
}
