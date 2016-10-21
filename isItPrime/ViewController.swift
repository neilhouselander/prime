//
//  ViewController.swift
//  isItPrime
//
//  Created by Neil Houselander on 16/10/2016.
//  Copyright © 2016 Neil Houselander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextFieldBox: UITextField!
    
    @IBOutlet weak var wellIsItLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func isItPrimeButtonPressed(_ sender: AnyObject) {
        
        var isPrime = true
        
        if let userNumber = Int(userTextFieldBox.text!) {
            if userNumber == 1 {
                isPrime = false
                
            }
            
            var i = 2
            
            while i < userNumber {
                
                if userNumber % i == 0 {
                    isPrime = false
                }
                
                i += 1
            }
            if isPrime {
                wellIsItLabel.text = "\(userTextFieldBox.text!) is a prime number 😀"
            }
            else {
                wellIsItLabel.text = "\(userTextFieldBox.text!) is not a prime number ☹️"
            }
        }
        else{
            wellIsItLabel.text = "Please enter a whole number dummy!"
        }
        
    }

}

