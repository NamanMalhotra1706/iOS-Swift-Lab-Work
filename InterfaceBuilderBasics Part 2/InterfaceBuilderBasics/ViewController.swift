//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButon: UIButton!;
    var lightOn = true;
    @IBOutlet weak var myLabel: UILabel!;
    var pageColour = true;
    @IBOutlet weak var returnHomeButton: UIButton!;
    @IBOutlet weak var myImage: UIImageView!;
    @IBOutlet weak var myText: UITextView!;
    @IBOutlet weak var mySegmentedButton: UISegmentedControl!;
    @IBOutlet weak var myLabelOpinion: UILabel!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let heading = UILabel(frame: CGRect(x: 55, y: 50, width: 400, height: 100))
        heading.text = "I'm learning how to make new Apps!"
        view.addSubview(heading);
        returnHomeButton.tintColor = .white;
        returnHomeButton.isHidden = true;
        mySegmentedButton.isHidden = true;
        myLabelOpinion.isHidden = true;
    }

    fileprivate func returnHome() {
        returnHomeButton.isHidden = false;
    }
    fileprivate func updateUI() {
        returnHome()
        myButon.tintColor = .white
        if lightOn {
            view.backgroundColor = .purple;
            myButon.setTitle("Off", for: .normal)
            myLabel.text = "Page Colour : Purple"
            myLabel.textColor = .systemPink
            
        } else {
            view.backgroundColor = .systemPink;
            myButon.setTitle("On", for: .normal)
            myLabel.text = "Page Colour : SystemPink"
            myLabel.textColor = .purple
        }
    }
    fileprivate func updateSegmentedControl() {
        mySegmentedButton.isHidden = false;
        myLabelOpinion.isHidden = false;
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button Pressed!")
        lightOn.toggle()
        pageColour.toggle()
        updateUI()
        updateSegmentedControl()
    }
    @IBAction func returnHomeTapped(_ sender: UIButton) {
        myButon.setTitle("Change Colour!", for: .normal)
        myLabel.text = "Page Colour : White"
        view.backgroundColor = .white;
        myButon.tintColor = .systemRed;
        myLabel.textColor = .black;
        returnHomeButton.isHidden = true;
        mySegmentedButton.isHidden = true;
        myLabelOpinion.isHidden = true;
    }
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        if mySegmentedButton.selectedSegmentIndex == 0 {
            if view.backgroundColor == .purple {
                myLabelOpinion.text = "Yay!😄 You like Purple Colour!"
            }
            else {
                myLabelOpinion.text = "Yay!😄 You like SystemPink Colour!"
            }
        }
        else if mySegmentedButton.selectedSegmentIndex == 1 {
            if view.backgroundColor == .purple {
                myLabelOpinion.text = "Nay!☹️ You don't like Purple Colour!"
            }
            else {
                myLabelOpinion.text = "Nay!☹️ You don't like SystemPink Colour!"
            }
        }
    }
}
