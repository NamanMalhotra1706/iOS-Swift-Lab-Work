//
//  Game.swift
//  GuidedProject-ApplePie
//
//  Created by student on 23/02/24.
//

import Foundation

struct Game{
    var word:String;
    var incorrectMovesRemaining: Int;
    
    var guessedLetters:[Character];
    
    mutating func playerGuesssed(letter: Character){
        guessedLetters.append(letter);
        
        if(!word.contains(letter)){
            incorrectMovesRemaining -= 1;
        }
    }
    var formattedWord : String {
        var guessedWord = ""
        for letter in word{
            if(guessedLetters.contains(letter)){
                guessedWord += "\(letter)"
            }
            else{
                guessedWord += "_"
            }
        }
        return guessedWord;
    }
}




