//
//  main.swift
//  Bingo
//
//  Created by Liam Byrne on 2017-01-16.
//  Copyright © 2017 Liam Byrne. All rights reserved.
//

import Foundation

// Declare an array of integers to store the user's queue of numbers
var queue = [0, 0, 0, 0, 0]

// Declare an array of bools to store the selected number data
var selected = [false, false, false, false, false]

// Declare variables to count and calculate score
var score = 0
var total = 0
var temp = 0

// Declare a variable to count up for loops
var index = 0
// Declare a variable to store data from rolled dice
var roll = Int(arc4random_uniform(10))

for (index, value) in queue.enumerated() {
    
    // Declare a variable to temperarily store data from command line
    print("Type a number to add to your queue - (Number \(index+1))")
    if let input = Int(readLine(strippingNewline: true)!) {
        if input >= 2 && input <= 12 {
            queue[index] = input
            total = total + input
        }
    }
    
    print(queue)
    
}

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
    
    print(roll)
    print(selected)
}


for (index, value) in queue.enumerated() {
    if selected[index] == true {
        temp = queue[index]
        total = total - temp
    }
}

print("Your score is \(total)")
