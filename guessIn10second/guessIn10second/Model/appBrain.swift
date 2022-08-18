//
//  appBrain.swift
//  guessIn10second
//
//  Created by Macbook Air on 17.08.2022.
//

import Foundation




struct AppBrain {
    
    
    var playerCount: Int = 0
    var numberOfPlayers: Int = 1
    var randomQ: Int = 1
    
    var question: [Question] =
 
[ Question(task: "брендів машин", imageName: "cars"),
Question(task: "країн", imageName: "countries"),
Question(task: "міст", imageName: "city")
]

    
    mutating func getPlayer() -> Int {
        let p = playerCount
        if playerCount == numberOfPlayers-1 {
            playerCount = 1
        } else {
            playerCount += 1
        }
        return p
    }

    mutating func sendHowManyPlayers(_ players: Int) {
        numberOfPlayers = players
    }

    mutating func loadQuestTask() -> String {
        randomQ = Int.random(in: 1...self.question.count)
        return self.question[randomQ-1].task
    }
    
    func loadQuestImage() -> String {
        return self.question[randomQ-1].imageName
    }
    
    
}
