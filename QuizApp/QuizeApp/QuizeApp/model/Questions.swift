//
//  Questions.swift
//  QuizeApp
//
//  Created by Mustafa Mehdi on 2018-09-03.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import Foundation

class Questions
{
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer : Bool)
    {
        questionText = text
        answer = correctAnswer
    }
}
