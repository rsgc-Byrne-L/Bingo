//
//  main.swift
//  Bingo
//
//  Created by Liam Byrne on 2017-01-16.
//  Copyright © 2017 Liam Byrne. All rights reserved.
//

import Foundation

// Declare an array of integers to store the selected numbers
var select : [Int]

// Declare a variable to check to make sure input is an integer
var number = 0

// Declare two variables to store die from rolled dice
var firstRoll = arc4random_uniform(5)
var secondRoll = arc4random_uniform(5)

// Declare a variable to temperarily store data from command line
if let input = Int(readLine(strippingNewline: true)!) {
    number = input
}

print(number)
