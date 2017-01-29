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

// Declare an array of Integers to store the various scores in "test mode"
var scores = [Int]()

// Declare variables to count and calculate score
var total = 0
var temp = 0
var choice = 0
var number = 0
var number2 = 0
var final : Double = 0

// Declare a variable to count up for loops
var index = 0
// Declare a variable to store data from rolled dice
var roll = Int(arc4random_uniform(10))

// Call the "startGame" fuction in the "Response" class (starts the game)
choice = Game.startGame()

// To play
if choice == 0 {
    
    // Call the "userInput" fuction in the "Response" class
    queue = Game.getInput()
    // Call the "getTotal" fuction in the "Response" class
    total = Game.getTotal(queue: queue)
    
    // Call the "select" fuction in the "Response" class
    selected = Game.select(queue: queue)
    
    // Call the "update" fuction in the "Response" class
    total = Game.update(queue: queue, selected: selected, max: total)
    
    print("Your score is \(total)")
    
    // To test
} else if choice == 1 {
    
    // Call the "startGame2" fuction in the "Response" class
    number = Game.startGame2()
    
    // Call the "userInput" fuction in the "Response" class
    queue = Game.getInput()
    
    // Call the "getTotal" fuction in the "Response" class
    total = Game.getTotal(queue: queue)
    
    // Store the data of total
    number2 = total
    
    while temp < number+1 {
        
        // Call the "select" fuction in the "Response" class
        selected = Game.select(queue: queue)
        
        // Call the "update" fuction in the "Response" class
        total = Game.update(queue: queue, selected: selected, max: total)
        
        scores.append(total)
        temp += 1
        total = number2
    }
    
    final = Game.getAverage(queue: scores, times: number)
    print("Your average score after \(number) tests is \(final)!")
    
}
