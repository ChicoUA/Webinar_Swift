//
//  Animal.swift
//  Animals
//
//  Created by Francisco Jesus on 23/11/2021.
//

import Foundation

class Animal{
    var name : Array<String>!
    var owner: Array<String>!
    var age: Array<Int>!
    
    init(name:Array<String>, owner:Array<String>, age:Array<Int>) {
        self.name = name
        self.owner = owner
        self.age = age
    }
}
