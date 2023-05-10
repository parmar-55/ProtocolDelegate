//
//  SecondViewController.swift
//  ProtocolDelegate
//
//  Created by Demo 01 on 08/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

protocol DataPass
{
        func data(name:String,address:String,city:String,mobile:String)
}


class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtaddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    
    var delegate:DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func saveEvent(_ sender: Any) {
        delegate.data(name: txtName.text!, address: txtaddress.text!, city: txtCity.text!, mobile: txtMobile.text!)
        
    }
    
    


}
