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
    
    mutating func playerGuessed(letter : Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}
