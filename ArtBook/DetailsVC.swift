//
//  DetailsVC.swift
//  ArtBook
//
//  Created by Yasin Cengiz on 5.02.2020.
//  Copyright © 2020 MrYC. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Recognizer
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
        
    }
    

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func selectImage() {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = false
        
        present(picker, animated: true, completion: nil)
        
    }

}
