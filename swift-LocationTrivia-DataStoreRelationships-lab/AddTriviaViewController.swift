//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Joyce Matos on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    var location = Location()
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func saveButton(_ sender: AnyObject) {
        let trivium = Trivium(content: textField.text!, likes: 0)
        location.trivia.append(trivium)
        self.dismiss(animated: false, completion: nil)
        print("Save")
    }
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        self.dismiss(animated: false, completion: nil)
        print("Cancel")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
