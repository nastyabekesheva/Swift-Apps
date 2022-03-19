//
//  Game.swift
//  ApplePie
//
//  Created by Nastya Bekesheva on 18.03.2022.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters : [Character]
    var formattedWord : String{
        var guesedWord = ""
        for letter in word {
            if guessedLetters.contains(letter){
                guesedWord += "\(letter)"
            }
            else{
                guesedWord += "_"
            }
        }
        return guesedWord
    }
    
    mutating func playerGuessed(letter : Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}
