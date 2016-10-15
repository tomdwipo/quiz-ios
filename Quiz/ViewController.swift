//
//  ViewController.swift
//  Quiz
//
//  Created by GITS  on 10/15/16.
//  Copyright © 2016 GITS . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var asnwerLabel: UILabel!
    
    let questions: [String] = ["Apa nama Ibu Kota Indonesia ?", "7+7 = ?", "Apakah Surabaya merupakan jawa barat?"]
    let answers : [String] = ["Jakarta", "14", "salah"]
    var currentQuestionIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNextQuestion(_ sender: AnyObject) {
        currentQuestionIndex = currentQuestionIndex + 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question : String = questions[currentQuestionIndex]
        questionLabel.text = question
        asnwerLabel.text = "???"
    }

    @IBAction func showAnswer(_ sender: AnyObject) {
        let answer : String = answers[currentQuestionIndex]
        asnwerLabel.text = answer
    }
}

