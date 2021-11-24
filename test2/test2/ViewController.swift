//
//  ViewController.swift
//  test2
//
//  Created by Francisco Jesus on 24/11/2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, EditviewControllerDelegate {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var owner: UILabel!
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var ImageView: UIImageView!
    var animal: Animal!
    var array = ["Snail", "Rhino", "Frog"]
    var animalType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animal = Animal()
        
        picker.dataSource = self
        picker.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEdit"{
            let editVC = segue.destination as! EditViewController
            editVC.dataProtocol = self
            editVC.image = ImageView.image
        }
    }
    
    
    func sendData(name: String, owner: String, age: Int) {
        animal.name[animalType] = name
        animal.owner[animalType] = owner
        animal.age[animalType] = age
        updateText()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if array[row] == "Snail"{
            animalType = 0
            ImageView.image = UIImage(named: "snail")
            updateText()
        }
        else if array[row] == "Rhino"{
            animalType = 1
            ImageView.image = UIImage(named: "rhino")
            updateText()
        }
        else if array[row] == "Frog"{
            animalType = 2
            ImageView.image = UIImage(named: "frog")
            updateText()
        }
    }
    
    func updateText(){
        name.text = animal.name[animalType]
        owner.text = animal.owner[animalType]
        age.text = String(animal.age[animalType])
    }

}

