// Student name: Pawanpreet Kaur
// Student id: 300916703
//  model1.swift
//  Calculator app
//
//  Created by pawanpreet kaur on 2017-01-23.
//  Copyright © 2017 Pawanpreet kaur. All rights reserved.
// This is a model class used to perform actual calculation

import Foundation

class model1{
    var evalexp = ""
    func performOperation(evalexpfromview: String) -> String{
        
        var finalresult:String
        if evalexpfromview != ""
        {
            let op1: NSExpression = NSExpression(format: evalexpfromview)
            finalresult = String(op1.expressionValue(with: nil, context: nil) as! Double)
        
           
        }
        else{
            finalresult = "0"
        }
       
        
        return finalresult
    }
    
   }
