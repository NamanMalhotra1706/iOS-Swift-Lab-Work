//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SubmitOutlet: UIButton!
    
    @IBOutlet weak var headingLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
    }
    @IBAction func changeTitle(_ sender: Any) {
        headingLable.text = "Grover Constructions";
    }
    
    @IBAction func submitDetails(_ sender: Any) {
        print("Your Detials have been submited successfully");
    }
    
}

