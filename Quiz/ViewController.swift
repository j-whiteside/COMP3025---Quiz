//
//  ViewController.swift
//  Quiz
//
//  Created by student on 2016-01-15.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var showAnswerButton: UIButton!
    
    let questions: [String] = ["From what is cognac made?",
                                "What is 7 +7?",
                                "What is the capital of Ontario"]
    
    let answers: [String] = ["grapes",
                                "14",
                                "Toronto"]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        questionLabel.text = questions[currentQuestionIndex]
        
    }
    
    @IBAction func nextQuestion(sender: AnyObject) {
        
        ++currentQuestionIndex
        
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        
    }
    
    @IBAction func showAnswer(sender: UIButton) {
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }


}

