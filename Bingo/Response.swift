//
//  Response.swift
//  Bingo
//
//  Created by Liam Byrne on 2017-01-28.
//  Copyright © 2017 Liam Byrne. All rights reserved.
//

import Foundation

class Response {
    init() {
    }
    // Section to allow user to choose to 'play' or 'test'
    func startGame() -> Int {
        var choice = 0
        var temp = 0
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
        return choice
    }
    
    func getInput() -> [Int] {
        var temp = 0
        var queue = [0, 0, 0, 0, 0]
        while temp <= 4 {
            
            // Declare a variable to temperarily store data from command line
            print("Type a number to add to your queue - (Number \(temp+1))")
            if let input = Int(readLine(strippingNewline: true)!) {
                if input >= 2 && input <= 12 {
                    queue[temp] = input
                    temp += 1
                }
            }
        }
        return (queue)
    }
    
    func getTotal(queue: [Int]) -> Int {
        
        var temp = 0
        var input = 0
        
        while temp <= 4 {
            input = queue[temp]
            total = total + input
            temp += 1
        }
        return total
    }
    
    func getAverage(queue: [Int], times: Int) -> Double {
        var temp = 0
        var total : Double = 0
        
        print("temp = \(temp)")
        print("totoal = \(total)")
        print("times = \(times)")
        print("queue = \(queue)")
        
        while temp <= times-1 {
            total = total + Double(queue[temp])
            temp += 1
        }
        
        total = total/(Double(times)-1)
        
        return total
    }
}
