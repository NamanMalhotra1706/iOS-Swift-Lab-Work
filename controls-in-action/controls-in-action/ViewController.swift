//
//  ViewController.swift
//  controls-in-action
//
//  Created by student on 22/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SumbitButtonLabel: UIButton!
    @IBOutlet weak var ModeLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var PasswordLabel: UILabel!
    
    @IBOutlet weak var ImageOutlet: UIImageView!
    
    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var DOBLabel: UILabel!
    @IBOutlet weak var AddressLabel: UILabel!
    
    @IBOutlet weak var RateExpLabel: UILabel!
    
    @IBOutlet weak var RateWorkLabel: UILabel!
    
    @IBOutlet weak var DatePickerLabel: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func SubmitButtonAction(_ sender: UIButton) {
        if let usernameLabel = UserNameTextField.text{
            RateExpLabel.text = "Mr \(usernameLabel), Thanks for Registring!";
        }
        SumbitButtonLabel.isHidden = !SumbitButtonLabel.isHidden;
    }
    
    
    @IBAction func SwitchAction(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = .black;
            ModeLabel.text = "White Mode";
            ModeLabel.textColor = .white;
            TitleLabel.textColor = .white;
            UserNameLabel.textColor = .white;
            PasswordLabel.textColor = .white;
            DOBLabel.textColor = .white;
            AddressLabel.textColor = .white;
            RateWorkLabel.textColor = .white;
            RateExpLabel.textColor = .white;
            if #available(iOS 13.4, *) {
                       DatePickerLabel.overrideUserInterfaceStyle = .dark
                   } else {
                       DatePickerLabel.setValue(UIColor.white, forKey: "textColor")
                   }
            
        }
        else{
            view.backgroundColor = .white;
            ModeLabel.text = "Dark Mode";
            ModeLabel.textColor = .black;
            TitleLabel.textColor = .black;
            UserNameLabel.textColor = .black;
            PasswordLabel.textColor = .black;
            DOBLabel.textColor = .black;
            AddressLabel.textColor = .black;
            RateWorkLabel.textColor = .black;
            RateExpLabel.textColor = .black;
            
            if #available(iOS 13.4, *) {
                       DatePickerLabel.overrideUserInterfaceStyle = .light
                   } else {
                       DatePickerLabel.setValue(UIColor.black, forKey: "textColor")
                   }
            
        }
    }
    
    @IBAction func UserNameAction(_ sender: UITextField) {
        if let userName = sender.text{
            print("Username : \(userName)");
        }
    }
    

    @IBAction func AddressChanged(_ sender: UITextField) {
        if let address = sender.text{
            print("Address: \(address)");
        }
    }
    
    @IBAction func PasswordAction(_ sender: UITextField) {
        
    }
    
    @IBAction func RateWorkSlider(_ sender: UISlider) {
        if sender.value > 5{
            RateExpLabel.text = "We Loved that you like our work!"
        }
        else{
            RateExpLabel.text = "Sorry! we will try out best to make you happy"
        }
    }
    
//    @IBAction func TapGestureOnImage(_ sender: UITapGestureRecognizer) {
//        
//        let location = sender.location(in: view)
//            print(location)
//
//    }
}


