//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by shy attoun on 04/05/2022.

//

import Foundation
import UIKit

struct QuizBrain{
    
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
              Question(q: "אלופת הנבא לשנת 2021/2022 היא גולדן סטייט ווריורס.", a: "True"),
              Question(q: "העיר השנייה בגודלה בישראל היא תל אביב", a: "True"),
              Question(q: "בירת ספרד היא מדריד", a: "True"),
              Question(q: "האיש הגבוה בעולם הוא קונסטנטין פופה", a: "False"),
              Question(q: "הזמר סטפן לה גאר נולד בישראל", a: "True"),
              Question(q: "המנצחים של המירוץ למיליון עונה 4 הם התאומים עדי ושי אטון", a: "False"),
              Question(q: "ברק אובמה נבחר פעמיים ברצף לנשיאות ארהב.", a: "True"),
              Question(q: "רוג'ר פדרר הוא שיאן הזכיות בגראנד סלאם", a: "True"),
              Question(q: "החיה הכי מרעישה בטבע היא הפיל", a: "False"),
              Question(q: "המקום הכי נמוך בעולם הוא עמק הסיליקון בסן פרנסיסקו", a: "False"),
              Question(q: "המדינה הכי קטנה באירופה היא הוותיקן", a: "True")

    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func nextQuestion (){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }

    mutating func checkAnswer (_ userAnswer: String) -> Bool {
        if userAnswer ==  quiz[questionNumber].answer{
            score += 1
            return true
        } else {
            return false
        }
  
    }
    
    func getScore () -> Int {
        return score
    }
    
    func getProgress () -> Float{
        
        let progress = Float(questionNumber + 1) / Float(quiz.count) 
        return progress
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
  
}
