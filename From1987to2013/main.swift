//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation


//============================================Make sure input is acceptable=============================================\\

var validInput = 0

// Make sure input is acceptable
while 1 == 1 {
    
    // Make sure input is not nil
    guard let givenInput = readLine() else {
        print("Please enter an integer between 1 and 10000")
        continue
    }
    
    // Make sure input is an integer
    guard let givenInteger = Int(givenInput) else {
        print("Please enter an integer between 1 and 10000")
        continue
    }
    
    // Is the input between 1 and 32500
    if givenInteger < 1 || givenInteger > 10000 {
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
    
        switch numberOfCharacters {
        case 1:

        case 2:

        case 3:

        case 4:

        case 5:
          print("The next year with distinct digits will be ()")

    }
    
    holderValue = validInput % 1000
    firstNumber = validInput / 1000

    // Find second number and adjust holder value
    secondNumber = holderValue / 100
    holderValue = holderValue % 100

    // Find third number
    thirdNumber = holderValue / 10

    // Find fouth number
    fourthNumber = holderValue % 10

//========================================Find next year with distinct digits===========================================\\

    inner: while 1 == 1 {
    
        if firstNumber == secondNumber || firstNumber == thirdNumber || firstNumber == fourthNumber {
            validInput = validInput + 1
            continue outer
        }
        
        if secondNumber == thirdNumber || secondNumber == fourthNumber {
            validInput = validInput + 1
            continue outer
        }
            
        if thirdNumber == fourthNumber {
            validInput = validInput + 1
            continue outer
        }
        
        // If we reach here the output will be the next year with distinct digits
        break inner
            
    }
    
    break outer
    
}

print("The next year with distinct digits will be \(validInput)")

