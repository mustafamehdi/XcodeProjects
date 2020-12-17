//
//  ViewController.swift
//  QuizeApp
//
//  Created by Mustafa Mehdi on 2018-09-02.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQustion = QuestionBank()
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!

    var pickedAnswers : Bool = false
    var questonNumer : Int = 0
    var score : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let firstQuestion  = allQustion.list[0]
        questionLabel.text = firstQuestion.questionText
     
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func answerPressed(_ sender: AnyObject) {
        
       
        if sender.tag == 1
        {
            pickedAnswers = true
        }else if sender.tag == 2
        {
            pickedAnswers = false
        }
        
        questonNumer += 1
      
        nextQuestion()
    }
    
    func nextQuestion() {
        if questonNumer <= 12
        {
         checkAnswer()
         questionLabel.text = allQustion.list[questonNumer].questionText
            updateUI()
        } else{
            print("End of quiz")
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the questions, do you  want to start over ?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
               self.startOver()
            })
            alert.addAction(restartAction)
            present(alert,animated: true, completion: nil )
            questonNumer = 0
        
        }
    }
    func updateUI()
    {
          progressLabel.text = String(questonNumer + 1) + "/13"
          scoreLabel.text = "Score:" + String(score)
       
         progressBar.frame.size.width = (view.frame.size.width / 10) *  CGFloat(questonNumer + 1)
    }
    func startOver()
    {
         questonNumer = 0
         nextQuestion()
         updateUI()
         score = 0
    }
    func checkAnswer()
    {
       if pickedAnswers == allQustion.list[questonNumer].answer
        {
             print("You Are corret!")
            ProgressHUD.showSuccess("Success")
             score += 1
        }else
       {
        ProgressHUD.showError("Wrong")
        }
    }
    
    
}

