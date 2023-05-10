//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by Demo 01 on 08/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataPass {
    
    

    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lbladdress: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    
    @IBOutlet weak var lblMob: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextScreen(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    func data(name: String, address: String, city: String, mobile: String) {
        lblName.text = name
        lbladdress.text = address
        lblCity.text = city
        lblMob.text = mobile
    }
}

