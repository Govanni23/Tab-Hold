//
//  ViewController.swift
//  Tab Hold
//
//  Created by Govanni Deleon on 6/9/18.
//  Copyright © 2018 Deleon Apps. All rights reserved.
//

import UIKit

class PeopleListViewController: UITableViewController {

    let itemArray = ["He owes you money", "she owes you money", "He also owes you money"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleListCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

