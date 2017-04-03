//
//  ViewController.swift
//  Guess What
//
//  Created by Long Nguyen on 3/29/17.
//  Copyright © 2017 Long Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    var question: Int = 2
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if question == 1 {
            questionLabel.text = "Think a number"
            answerTextField.text = ""
            answerTextField.isHidden = true
            (sender as AnyObject).setTitle("Next", for: UIControlState.normal)
        } else if question == 2 {
            questionLabel.text = "Multiply it with 5"
        } else if question == 3 {
            questionLabel.text = "Now add 5 to the total"
        } else if question == 4 {
            questionLabel.text = "Multiple the answer with 2"
        
        } else if question == 5 {
            questionLabel.text = "Now add 2 to the total"
        } else if question == 6 {
            questionLabel.text = "What is the total"
        } else if question == 7 {
            if answerTextField.text != "" {
                let input: Int = Int(answerTextField.text!)!
                let answer = ((((input - 2 ) / 2) - 5) / 5)
                (sender as AnyObject).setTitle("Plays", for: UIControlState.normal)
                
            } else {
                let alert = UIAlertController(title: "Opps", message: "Please provider total", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                    
                //self.presentedViewController(alert, dismiss(animated: true, completion: nil))
                
            }
            
            self.view.endEditing(true)
        }
        question += 1
        
        if question > 7 {
            question = 1
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
    }
}

