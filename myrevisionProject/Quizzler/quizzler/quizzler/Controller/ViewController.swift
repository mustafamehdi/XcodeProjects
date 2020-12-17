//
//  ViewController.swift
//  quizzler
//
//  Created by Mustafa Mehdi on 2018-12-29.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayQuestion: UILabel!
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var progressbar: UIView!
 
    let question = QuestionBank()
    var questionN : Int = 0
    var scoreCount : Int = 0
     var totelQuestion : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
       totelQuestion = question.list.count - 1
       progressbar.frame.size.width = 0
       nextQuestion(questionNum: questionN)
        
       
    }

    @IBAction func ansBtn(_ sender: UIButton) {
        
        if sender.tag == 1
        {
            
                checkAnswers(currentQuestonNum: questionN, buttonTag: true)
                updateUI()
                questionN+=1
                nextQuestion(questionNum: questionN)
                progressbar.frame.size.width = (view.frame.size.width / 13 ) * CGFloat(questionN)
            
            
        }else{
            checkAnswers(currentQuestonNum: questionN, buttonTag: false)
            updateUI()
            questionN+=1
            nextQuestion(questionNum: questionN)
             progressbar.frame.size.width = (view.frame.size.width / 13 ) * CGFloat(questionN)
        }
        
    }
    
    func nextQuestion(questionNum: Int)
    {
        if questionNum <= totelQuestion
        {
             displayQuestion.text = question.list[questionNum].questionText
       }
        else{
            
            let alert = UIAlertController(title: "Awasome", message: "You have finished the quiz do you want to start over ?", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "restart", style: .default , handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(alertAction)
            present(alert, animated: true, completion:nil)
           
            
            
       }
       
        
    }
    func startOver()
    {
       questionN = 0
       scoreCount = 0
       displayQuestion.text = question.list[questionN].questionText
         score.text = "Score:\(scoreCount) "
         questionNum.text = "\(questionN+1)/13"
         progressbar.frame.size.width = 0
    }
    func updateUI()
    {
        questionNum.text = "\(questionN+1)/13"
    }
    func checkAnswers(currentQuestonNum: Int, buttonTag: Bool)
    {
        if question.list[currentQuestonNum].answers == buttonTag {
            
            ProgressHUD.showSuccess("Awasome You are correct!!")
            print(question.list[currentQuestonNum].answers)
            scoreCount+=1
            score.text = "Score:\(scoreCount) "
        }else
        {
              ProgressHUD.showError("Aww Wrong")
            print(question.list[currentQuestonNum].answers)
        }
    }
    
    
}




