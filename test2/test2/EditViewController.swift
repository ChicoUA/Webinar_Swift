//
//  EditViewController.swift
//  test2
//
//  Created by Francisco Jesus on 24/11/2021.
//

import UIKit

protocol EditviewControllerDelegate: NSObject {
    func sendData(name:String, owner:String, age:Int)
}

class EditViewController: UIViewController {

    weak var dataProtocol: EditviewControllerDelegate?
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editOwner: UITextField!
    @IBOutlet weak var editAge: UITextField!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = image
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func goBack(_ sender: Any) {
        if let delegate = dataProtocol{
            delegate.sendData(name: editName.text!, owner: editOwner.text!, age: Int(editAge.text!)!)
        }
        dismiss(animated: false, completion: nil)
    }
    
}
