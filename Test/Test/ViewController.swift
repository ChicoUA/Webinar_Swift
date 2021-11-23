//
//  ViewController.swift
//  Test
//
//  Created by Francisco Jesus on 21/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = "OI"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as? ViewController2
        secondVC?.texto = text.text ?? ""
            
        
    }

}

