//
//  ViewController.swift
//  NumberFunny_20Sep18
//
//  Created by MasterUNG on 20/9/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var myClass = MyClass()
    
    
    
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decreaseButton(_ sender: Any) {
        
        print("You Click ==> \(myClass.labelButtonStrings[0])")
        let newNumber = myClass.decreaseNumber(numberInt: currentNumber())
        changeNumber(numberInt: newNumber)
        
    }
    
    
    @IBAction func increaseButton(_ sender: Any) {
        
        print("You Click ==> \(myClass.labelButtonStrings[1])")
        changeNumber(numberInt: myClass.increaseNumber(numberInt: currentNumber()))
        
    }
    
    func changeNumber(numberInt: Int) -> Void {
        numberLabel.text = String(numberInt)
    }
    
    func currentNumber() -> Int {
        var resultInt: Int = 0
        
        resultInt = Int(numberLabel.text!)!
        
        return resultInt
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   // Main Function


}   // Main Class

