//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by shy attoun on 04/05/2022.

//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
