//
//  ViewController.swift
//  primeNumber
//
//  Created by BensonShen on 2018/3/5.
//  Copyright © 2018年 BensonShen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent
    }
    @IBAction func doThePrimeTest(_ sender: UIButton) {
        //1.take out the number from the inputTextField
        
        if let inputText = inputTextField.text{
            //2.convert the number string to int
            if let inputNumber = Int(inputText){
                //3.using the checkPrime function to get result
                resultLabel.text = checkPrime(num: inputNumber)
                //4.using the resulting label to show result
                resultLabel.isHidden = false
            }
        }
        inputTextField.text=""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.becomeFirstResponder() //push the keyboard up
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func checkPrime(num inputNumber:Int)->String{
        
        var isPrime:Bool? = true
        var result:String
        
        if inputNumber <= 0 {
            isPrime = nil
        }else if inputNumber == 1{
            isPrime = false
        }else{
            for i in 2..<inputNumber{
                if inputNumber % i == 0 {
                    isPrime = false
                    break //important
                }
            }
        }
        
        if isPrime == true{
            result = "\(inputNumber) is prime"
        }else if isPrime == false{
            result = "\(inputNumber) is not prime"
        }else{
            result = "reenter"
        }
        return result
        
    }

    
}

