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
        /* to bring up the existing UI tool 'imagePickerController' a constant/private object has to be defined as that type of object and then you can present it.  */
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func openActivity() {
        /* for the tool of Activity, there needs to be an object to act on, and this is another tool type or tool object, UIImage type */
        let jefImage = UIImage()
        let jefController = UIActivityViewController(activityItems: [jefImage], applicationActivities: nil)
        present(jefController, animated: true, completion: nil)
    }
    
    @IBAction func launchAlert() {
        /* here the object of type AlertController has existing properties title and message, which are required.  I commented out a line that worked, in that it did dismiss when taping OK */
        let jefAlert = UIAlertController()
        jefAlert.title = "Jef Alert"
        jefAlert.message = "Testing Jef Alert"
//        let jefOkAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        let jefOkAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            action in self.dismiss(animated: true, completion: nil)
        }
        jefAlert.addAction(jefOkAction)
        present(jefAlert, animated: true, completion: nil)
    }
// interesting that it worked without putting the other stuff in the brackets.  So not sure how to figure that out, but I'll include it and see what's going on for now
}

