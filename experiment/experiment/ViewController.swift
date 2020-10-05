//
//  ViewController.swift
//  experiment
//
//  Created by Jeffrey Kalmanek on 10/4/20.
//  Copyright © 2020 AT&T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickImage() {
        
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func openActivity() {
        let jefImage = UIImage()
        let jefController = UIActivityViewController(activityItems: [jefImage], applicationActivities: nil)
        present(jefController, animated: true, completion: nil)
    }
    
    @IBAction func launchAlert() {
        let jefAlert = UIAlertController()
        jefAlert.title = "Jef Alert"
        jefAlert.message = "Testing Jef Alert"
        present(jefAlert, animated: true, completion: nil)
    }

}

