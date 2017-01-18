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

// Declare a variable to check to make sure input is an integer
var number = 0

// Declare a variable to count up for loops
var count = 0
var count2 = 0
// Declare a variable to store data from rolled dice
var roll = Int(arc4random_uniform(10))

while count < 5 {
    
    // Declare a variable to temperarily store data from command line
    print("Type a number to add to your queue - (Number \(count+1))")
    if let input = Int(readLine(strippingNewline: true)!) {
        number = input
        if number >= 2 && number <= 12 {
            queue[count] = number
            count += 1
        }
    }
    
    print(queue)
    
}

count = 0

while count <= 4 {
    roll = Int(arc4random_uniform(10) + 2)
    
    while count2 < 4 {
    if roll == queue[count2] {
        if selected[count2] == true {
            selected[count2] = false
        } else {
        selected[count2] = true
        }
        count2 += 1
    } else {
        count2 += 1
        }
    }
    count += 1
    
    count2 = 0
    
    print(roll)
    print(selected)
}
