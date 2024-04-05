//
//  ViewController.swift
//  Lab-Login-SegueAndNavigation
//
//  Created by student on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameLogIn: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return };
        
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password";
        }
        else if sender == forgotUserNameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = "Welcome, \(usernameLogIn.text!)";
        }
    }
    
    @IBAction func forgotUserNameButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "LoginSegue", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "LoginSegue", sender: sender)
    }
}

