//
//  ViewController.swift
//  IntroToUIKIT
//
//  Created by student on 21/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var textAreaOulet: UITextView!
    @IBOutlet weak var EditButtonLabel: UIButton!
    @IBOutlet weak var ModeButton: UIButton!
    @IBOutlet weak var RightText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeMode(_ sender: Any) {
        ModeButton.setTitle("Dark", for: .normal)
        view.backgroundColor = .white;
        LabelOutlet.textColor = .black;
        textAreaOulet.textColor = .black;
        textAreaOulet.backgroundColor = .white;
        RightText.textColor = .black;
        RightText.backgroundColor = .white;
        
    }
    @IBAction func EditButtonAction(_ sender: Any) {
        
    }
}

