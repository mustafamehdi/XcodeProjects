//
//  Question.swift
//  quizzler
//
//  Created by Mustafa Mehdi on 2018-12-29.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answers : Bool
    
    init(text: String , correctAnswer: Bool)
    {
        questionText = text
        answers = correctAnswer
    }
    
    
}
