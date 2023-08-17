//
//  ViewController.swift
//  BigNerdRench-Book-Pr-First
//
//  Created by Shani Vishwakarma on 08/08/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var questionLabel: UILabel!
    @IBOutlet private var answerLabel: UILabel!

    let questions = ["What is 7+7?",
                     "What is the capital of Vermont?",
                     "What is cognac made from?"]
    let answers = ["14",
                   "Montpelier",
                   "Grapes"]

    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
    }

    func setupUi(){
        questionLabel.text = questions[0]
        answerLabel.text = "???"
    }

    @IBAction private func showNextQuestion(_ sender: UIButton) {
        questionNumber = questionNumber + 1

        if questionNumber == questions.count {
            questionNumber = 0
        }

        questionLabel.text = questions[questionNumber]
        answerLabel.text = "???"

    }


    @IBAction private func showAnswer(_ sender: UIButton) {
        answerLabel.text = answers[questionNumber]
    }

}

