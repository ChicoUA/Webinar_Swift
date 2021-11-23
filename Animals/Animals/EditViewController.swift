//
//  EditViewController.swift
//  Animals
//
//  Created by Francisco Jesus on 22/11/2021.
//

import UIKit

protocol EditViewControllerDelegate: NSObjectProtocol{
    func sendData(name:String, owner:String, age:Int)
}

class EditViewController: UIViewController {
    
    weak var delegate: EditViewControllerDelegate?
    var image: UIImage!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editOwner: UITextField!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var editAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ImageView.image = image
    }
    
    @IBAction func goBack(_ sender: Any) {
        if let delegate = delegate{
            delegate.sendData(name: editName.text!, owner: editOwner.text!, age: Int(editAge.text!)!)
        }
        dismiss(animated: false, completion: nil)
    }
    

}
