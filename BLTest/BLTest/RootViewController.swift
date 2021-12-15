//
//  RootViewController.swift
//  BLTest
//
//  Created by mohamed Jimale on 12/9/21.
//

import UIKit

class RootViewController: UIViewController {

    var model: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // grabing copy from model aplication delagate
        
        if let ad = UIApplication.shared.delegate as? AppDelegate {
                   self.model = ad.model
               }
        
        
    }
    

}

