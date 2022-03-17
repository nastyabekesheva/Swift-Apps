//
//  ViewController.swift
//  ApplePie
//
//  Created by Nastya Bekesheva on 17.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["tree", "swift", "apple", "math", "physics", "book", "cosmos", "integer"]
    var incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame : Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    func newRound(){
        let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining:
            incorrectMovesAllowed)
            updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
                                      

}

