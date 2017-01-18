//
//  main.swift
//  Bingo
//
//  Created by Liam Byrne on 2017-01-16.
//  Copyright © 2017 Liam Byrne. All rights reserved.
//

import Foundation

// Declare an array of integers to store the selected numbers
var select = [0, 0, 0, 0, 0]

// Declare a variable to check to make sure input is an integer
var number = 0

// Declare a variable to count up for loo[s
var count = 0

// Declare two variables to store data from rolled dice
var roll = arc4random_uniform(10)

while count < 5 {
    
    // Declare a variable to temperarily store data from command line
    print("Type a number to add to your queue - (Number \(count))")
    if let input = Int(readLine(strippingNewline: true)!) {
        number = input
        select[count] = number
    }
    
    count += 1
    
    print(select)
    
}

