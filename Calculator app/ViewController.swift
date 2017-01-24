// Student Name: Pawanpreet Kaur
// ID: 300916703
//  ViewController.swift
//  Calculator app
//
//  Created by pawanpreet kaur on 2017-01-17.
//  Copyright © 2017 Pawanpreet kaur. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempdisplay: UILabel!
    var tempeval = ""
    var m1 = model1()
    
    //This is an easier way of setting and getting digit to the label
    var lblupdatedigit : Double
    {
        get{ return Double(tempdisplay.text!)!
        }
        set{
            tempdisplay.text = String(newValue)
        }
    }
    // called when numbers are clicked
    var continueNumber = false
    @IBAction func btnDigitClicked(_ sender: UIButton) {
        
        if continueNumber == false
        {
            tempdisplay.text = sender.currentTitle
        }
        else{
            tempdisplay.text = tempdisplay.text! + sender.currentTitle!
        }
        continueNumber = true
    }
    
    // called when operators are clicked
    @IBAction func btnOperatorClicked(_ sender: UIButton) {
        if let clickedOperator = sender.currentTitle{
            
            tempeval = tempeval + String(Double(tempdisplay.text!)!*1.0)
            continueNumber = false
            if clickedOperator == "+"{
                tempeval = tempeval + "+"
            }
            if clickedOperator == "-"{
                tempeval = tempeval + "-"
            }
            if clickedOperator == "×"{
                tempeval = tempeval + "*"
            }
            if clickedOperator == "÷"{
                tempeval = tempeval + "/"
            }
            if clickedOperator == "√"{
                tempdisplay.text = String(sqrt(Double(tempdisplay.text!)!))
                tempeval = ""
            }
            if clickedOperator == "="{
                tempdisplay.text = m1.performOperation(evalexpfromview: tempeval)
                    tempeval = ""
            }
        
        
        }
    }
// this function is called when user click on clear button
    @IBAction func btnClearClicked(_ sender: UIButton) {
        tempdisplay.text = "0";
        continueNumber = false;
        tempeval = ""
    }
    
}
