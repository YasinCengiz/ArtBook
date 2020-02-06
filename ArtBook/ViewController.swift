//
//  ViewController.swift
//  ArtBook
//
//  Created by Yasin Cengiz on 5.02.2020.
//  Copyright © 2020 MrYC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "text"
        
        return cell
    }
    
    
    @objc func addButtonClicked() {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
}

