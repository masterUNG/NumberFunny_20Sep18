//
//  MyClass.swift
//  NumberFunny_20Sep18
//
//  Created by MasterUNG on 20/9/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import Foundation

class MyClass {
    
//    Explicit
    let labelButtonStrings = ["DeCrease", "InCrease"]
    let labelNumberTextStrings = ["Zero","One","Two","Three","Four","Five","Six","Sevent","Eight","Nine"]
    
    
    func decreaseNumber(numberInt: Int) -> Int {
        let resultInt = numberInt - 1
        return resultInt
    }
    
    func increaseNumber(numberInt: Int) -> Int {
        let resultInt = numberInt + 1
        return resultInt
    }
    
    
}   // Main Class



