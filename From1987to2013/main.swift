//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

//============================================Make sure input is acceptable=============================================\\

var validInput = 0

// Make sure input is acceptable
while 1 == 1 {
    
    // Make sure input is not nil
    guard let givenInput = readLine() else
    {
        print("Please enter an integer between 1 and 10000")
        continue
    }
    
    // Make sure input is an integer
    guard let givenInteger = Int(givenInput) else {
        print("Please enter an integer between 1 and 10000")
        continue
    }
    
    // Is the input between 1 and 32500
    if givenInteger <= 1 || givenInteger >= 10000 {
        print("Please enter an integer between 1 and 10000")
        continue
    }
    
    // If we get here, we know the integer is accurate
    validInput = givenInteger
    break
}

//=============================================Find each number in input================================================\\

var holderValue = 0
var firstNumber = 0
var secondNumber = 0
var thirdNumber = 0
var fourthNumber = 0

outer: while 1 == 1 {

    // Find first number and set holder value
    holderValue = validInput % 1000
    firstNumber = validInput / 1000

    // Find second number and adjust holder value
    secondNumber = holderValue / 1000
    holderValue = holderValue % 1000

    // Find third number
    thirdNumber = holderValue / 1000

    // Find fouth number
    fourthNumber = holderValue % 1000

//========================================Find next year with distinct digits===========================================\\

    inner: while 1 == 1 {
    
        if firstNumber != secondNumber || firstNumber != thirdNumber || firstNumber != fourthNumber {
            continue
        } else {
            validInput = validInput + 1
        }
        if secondNumber != thirdNumber || secondNumber != fourthNumber {
            continue
        } else {
            validInput = validInput + 1
        }
        if thirdNumber != fourthNumber {
            continue
        } else {
            validInput = validInput + 1
        }
        
        // If we reach here the output will be the next year with distinct digits
        break inner
        
    }
    
    break outer
}

print("The next year with distinct digits will be \(validInput)")
