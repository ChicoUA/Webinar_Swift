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
    
    
    var animal : Animal?
    var animalType : Int!
    
    let array = ["Snail","Rhino","Frog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animal = Animal(name:["","",""], owner:["","",""], age:[0,0,0])
        animalType = 0
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
        animal?.name[animalType] = name
        animal?.owner[animalType] = owner
        animal?.age[animalType] = age
        
        updateText()
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
            animalType = 0
            updateText()
        }
        else if array[row] == "Rhino"{
            ImageView.image = UIImage(named:"rhino")
            animalType = 1
            updateText()
        }
        
        else if array[row] == "Frog"{
            ImageView.image = UIImage(named:"frog")
            animalType = 2
            updateText()
        }
        
        
        return array[row]
    }
    
    func updateText(){
        self.name.text = animal?.name[animalType]
        self.owner.text = animal?.owner[animalType]
        self.age.text = String(animal?.age[animalType] ?? 0)
    }
}

