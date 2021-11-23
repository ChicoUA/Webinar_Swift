//
//  ViewController.swift
//  Animals
//
//  Created by Francisco Jesus on 20/11/2021.
//

import UIKit

class ViewController: UIViewController, EditViewControllerDelegate,  UIPickerViewDataSource, UIPickerViewDelegate{
    

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var pickerAnimal: UIPickerView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var owner: UILabel!
    @IBOutlet weak var age: UILabel!
    
    var n: String = ""
    var o: String = ""
    var a: String = ""
    
    let array = ["Snail","Rhino","Frog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerAnimal.dataSource = self
        pickerAnimal.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEdit"{
            let editVC = segue.destination as! EditViewController
            editVC.delegate = self
            editVC.image = ImageView.image
        }
    }
    
    func sendData(name: String, owner: String, age: Int) {
        self.name.text = name
        self.owner.text = owner
        self.age.text = String(age)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if array[row] == "Snail" {
            ImageView.image = UIImage(named:"snail")
            
        }
        else if array[row] == "Rhino"{
            ImageView.image = UIImage(named:"rhino")
            
        }
        
        else if array[row] == "Frog"{
            ImageView.image = UIImage(named:"frog")
            
        }
        
        
        return array[row]
    }
    
    func cleanText(){
        name.text = ""
        owner.text = ""
        age.text = ""
    }
    
}

