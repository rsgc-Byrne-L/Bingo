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
var choice = 0

// Declare a variable to count up for loops
var index = 0
// Declare a variable to store data from rolled dice
var roll = Int(arc4random_uniform(10))

// Section to allow user to choose to 'play' or 'test'
print("Would you like to play or test number combinations? (Type 'play' or 'test')")
while temp == 0 {
    if let inputChoice = String(readLine(strippingNewline: true)!) {
        if inputChoice == "play" {
            temp = 1
            choice = 0
            
        } else if inputChoice == "test" {
            temp = 1
            choice = 1
            
        } else {
            print("Please input either 'play' or 'test'")
        }
    }
}

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
    
    print(roll)
    print(selected)
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
    // Section to take user input and put it into array
    while temp <= 4 {
        
        // Declare a variable to temperarily store data from command line
        print("Type a number to add to your queue for testing - (Number \(temp+1))")
        if let input = Int(readLine(strippingNewline: true)!) {
            if input >= 2 && input <= 12 {
                queue[temp] = input
                total = total + input
                temp += 1
            }
        }
    }
}
