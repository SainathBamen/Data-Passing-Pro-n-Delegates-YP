//
//  ViewController.swift
//  Data Passing Pro n Delegates YP
//  Created by sainath bamen on 24/12/22.


import UIKit



class ViewController: UIViewController, DataPass {
  
    
    @IBOutlet weak var lableName: UILabel!
    @IBOutlet weak var lableAddress: UILabel!
    @IBOutlet weak var lableCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func gotoFormButton(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    func passingData(name: String, address: String, city: String) {
        lableName.text = name
        lableAddress.text = address
        lableCity.text = city
    }
    
}

