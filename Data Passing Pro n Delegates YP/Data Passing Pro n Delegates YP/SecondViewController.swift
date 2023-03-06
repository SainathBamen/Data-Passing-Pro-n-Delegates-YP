//
//  SecondViewController.swift
//  Data Passing Pro n Delegates YP
//
//  Created by sainath bamen on 24/12/22.
//

import UIKit
protocol DataPass{
    func passingData(name:String, address:String, city:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var txtCity: UITextField!
    var delegate : DataPass!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButton(_ sender: Any) {
        delegate.passingData(name: txtName.text!, address: txtAddress.text!, city: txtCity.text!)
    }
}
    
    


