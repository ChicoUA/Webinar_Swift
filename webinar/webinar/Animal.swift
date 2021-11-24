//
//  Animal.swift
//  Animals
//
//  Created by Francisco Jesus on 23/11/2021.
//

import Foundation

// data driven object to save animal data
// might be serializable for saving
class Animal{
    var name : Array<String>!
    var owner: Array<String>!
    var age: Array<Int>!
    
    init() {
        self.name = ["","",""]
        self.owner = ["","",""]
        self.age = [0,0,0]
    }
}
