//
//  EnglishViewController.swift
//  NumberFunny_20Sep18
//
//  Created by MasterUNG on 20/9/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class EnglishViewController: UIViewController {
    
//    Explicit
    var myClass = MyClass()
    var currentInt: Int = 0
    
    
    
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decreaseButton(_ sender: Any) {
        showLog(indexInt: 0)
        let indexInt: Int = findCurrentNumber(statusBool: false)
        showEnglish(indexInt: indexInt)
    }
    
    
    @IBAction func increaseButton(_ sender: Any) {
        showLog(indexInt: 1)
        let indexInt: Int = findCurrentNumber(statusBool: true)
        showEnglish(indexInt: indexInt)
    }
    
    func showEnglish(indexInt: Int) -> Void {
        numberLabel.text = myClass.labelNumberTextStrings[indexInt]
    }
    
    func findCurrentNumber(statusBool: Bool) -> Int {
        
        var resultInt: Int = currentInt
        
        if statusBool {
//            Increase
            if resultInt >= 9 {
                resultInt = 0
            } else {
                resultInt += 1
            }
            
        }else {
//            Decrease
            if resultInt <= 0 {
                resultInt = 9
            } else {
                resultInt -= 1
            }
            
        }
        currentInt = resultInt
        print("resultInt ==> \(resultInt)")
        return resultInt
    }
    
    func showLog(indexInt: Int) -> Void {
        print("You Click ==> \(myClass.labelButtonStrings[indexInt])")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   // Main Function
    
}   // Main Class
