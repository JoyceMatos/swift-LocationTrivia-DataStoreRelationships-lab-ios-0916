//
//  LocationsTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Joyce Matos on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {
    
    var store = LocationsDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.accessibilityLabel = "Locations Table"
        tableView.accessibilityIdentifier = "Locations Table"
        
        navigationItem.rightBarButtonItem?.accessibilityLabel = "addButton"
        navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
        
        print(store.locations)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return store.locations.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "right detail", for: indexPath)
        let location = store.locations[indexPath.row]
        cell.textLabel?.text = location.name
        cell.detailTextLabel?.text = "\(location.trivia.count)"
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTrivia" {
            let destination = segue.destination as! TriviaTableViewController
            let indexPath = tableView.indexPathForSelectedRow
            destination.location = store.locations[(indexPath?.row)!]
        }
        
    }
    
}
