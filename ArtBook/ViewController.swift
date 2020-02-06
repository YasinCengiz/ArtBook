//
//  ViewController.swift
//  ArtBook
//
//  Created by Yasin Cengiz on 5.02.2020.
//  Copyright © 2020 MrYC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    
    
    }


    
    
    @objc func addButtonClicked() {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
}

