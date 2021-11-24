//
//  ViewController.swift
//  webinar
//
//  Created by Francisco Jesus on 24/11/2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // interface variables
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var owner: UILabel!
    @IBOutlet weak var age: UILabel!
    
    //animal variable saves the data of each animal
    var animal: Animal!
    //text for picker view
    var array = ["Snail", "Rhino", "Frog"]
    // track animal type
    var animalType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animal = Animal()
        
        // TODO add picker init
    }
    
    // TODO add segue implementation
    
    // TODO implement delegate method
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    

    func updateText(){
        name.text = animal.name[animalType]
        owner.text = animal.owner[animalType]
        age.text = String(animal.age[animalType])
    }

}

