//
//  MiddleViewController.swift
//  Order Of Events
//
//  Created by student on 05/03/24.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleViewLabel: UILabel!
    var eventNumber :Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addEvent(from: "viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
        }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }

    func addEvent(from: String) {
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText) \nEvent Number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }

}
