//
//  ViewController.swift
//  draftImagePicker
//
//  Created by Jeffrey Kalmanek on 10/12/20.
//  Copyright © 2020 AT&T. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var imagePickerView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }

//    // starting item, turned into two options
//    @IBAction func pickAnImage(_ sender: Any) {
//        let pickerController = UIImagePickerController()
//        pickerController.delegate = self
//        present(pickerController, animated: true, completion: nil)
//    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            imagePickerView.image = image
        }
        dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    // contain these two for the moment
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        let albumController = UIImagePickerController()
        albumController.delegate = self
        albumController.sourceType = .photoLibrary
        present(albumController, animated: true, completion: nil)
    }

    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        let cameraController = UIImagePickerController()
        cameraController.delegate = self
        cameraController.sourceType = .camera
        present(cameraController, animated: true, completion: nil)
    }

} // end of Class

