//
//  ViewController.swift
//  light
//
//  Created by Student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    var lightOn = true;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func handleSubmit(_ sender: Any) {
        lightOn.toggle();
        updateUI()
    }
    
}

