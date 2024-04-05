//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Student on 02/04/24.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete : Athlete?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var leagueTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var teamTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let ageString = ageTextField.text,
            let age = Int(ageString),
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
            athlete = Athlete(name: name, age: age, league: league,
            team: team)
        
        performSegue(withIdentifier: "segueForm", sender: self)

    }
    
    
    
    init?(coder: NSCoder, athlete:Athlete?){
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder:NSCoder){
        super.init(coder: coder)
    }
    
    func updateView(){
        if let athlete {
            nameTextField.text = athlete.name
            ageTextField.text = String(athlete.age)
            leagueTextField.text = athlete.league
            teamTextField.text = athlete.team
        }
        else{
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
