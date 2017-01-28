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
    }
