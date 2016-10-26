//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Joyce Matos on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    @IBAction func submitButton(_ sender: AnyObject) {
        
        let location = Location(name: nameTextField.text!, latitude: Float(latitudeTextField.text!)!, longitude: Float(longitudeTextField.text!)!)
        LocationsDataStore.sharedInstance.locations.append(location)
        self.dismiss(animated: false, completion: nil)
        print("Submit")
    }
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        
        self.dismiss(animated: false, completion: nil)
        print("Cancel")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.accessibilityLabel = "nameField"
        nameTextField.accessibilityIdentifier = "nameField"
        
        latitudeTextField.accessibilityLabel = "latitudeField"
        latitudeTextField.accessibilityIdentifier = "latitudeField"
        
        longitudeTextField.accessibilityLabel = "longitudeField"
        longitudeTextField.accessibilityIdentifier = "longitudeField"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
