//
//  ViewController.swift
//  trafficLight
//
//  Created by Student on 27/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var destinationTitleOulet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func UnwindToRed(unwindSegue: UIStoryboardSegue){
        print("I am back in red vc");
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = destinationTitleOulet.text;
    }

}


