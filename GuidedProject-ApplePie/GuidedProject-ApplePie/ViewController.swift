//
//  ViewController.swift
//  GuidedProject-ApplePie
//
//  Created by student on 23/02/24.
//

import UIKit

var listOfWords = ["buccanner","swift","glorious","incandescent","bug","program"];

//let cast = ["Vivien", "Marlon", "Kim", "karl"]
//let list = cast.joined(separator: ", ");

let incorrectMovesAllowed = 7;
var totalWins = 0;
var totalLosses = 0;

class ViewController: UIViewController {

    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons:[UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound();
    }
    var currentGame : Game!;
    
    func newRound(){
        if !listOfWords.isEmpty {
                let newWord = listOfWords.removeFirst()
                currentGame = Game(word: newWord,
                incorrectMovesRemaining: incorrectMovesAllowed,
                guessedLetters: [])
                enableLetterButtons(true)
                updateUI()
            } else {
                enableLetterButtons(false)
            }
    }
    
    func enableLetterButtons(_ enable: Bool) {
      for button in letterButtons {
        button.isEnabled = enable
      }
    }
    
    func updateUI(){
        var letters = [String]();
        for letter in currentGame.formattedWord{
            letters.append(String(letter));
        }
        
        let wordWithSpacing = letters.joined(separator:" ");
        
        correctWordLabel.text = wordWithSpacing
        
        scoreLabel.text = "Wins:\(totalWins), Losses:\(totalLosses)";
        
        treeImageView.image = UIImage(named:"Tree \(currentGame.incorrectMovesRemaining)");
    }

    @IBAction func letterButtonPressed(_ sender:UIButton){
        sender.isEnabled = false;
//        print("\(sender) Button Disabled");
       /* let letterString = sender.title(for: .normal)!*/
        
        let letterString = sender.configuration!.title!;
        
        let letter = Character(letterString.lowercased())
        
        currentGame.playerGuesssed(letter: letter);
        updateGamesState();
    }
    
    func updateGamesState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1;
        }
        else if currentGame.word == currentGame.formattedWord {
            totalWins += 1;
        }
        else{
            updateUI();
        }
    }
    
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
}


