//
//  ViewController2.swift
//  Test
//
//  Created by Francisco Jesus on 21/11/2021.
//

import UIKit

class ViewController2: UIViewController{
    
    @IBOutlet weak var label: UILabel!
    var texto: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = texto
    }
}
