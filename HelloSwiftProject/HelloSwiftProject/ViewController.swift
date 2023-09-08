//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by 제로 on 2023/09/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func showValue(_ sender: Any) {
        let name = inputField.text!
        valueLabel.text = "Hello, \(name)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

