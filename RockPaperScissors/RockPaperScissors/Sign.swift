//
//  Sign.swift
//  RPS
//
//  Created by Volodymyr Ostapyshyn on 12/24/19.
//  Copyright © 2019 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

let random2 = Int.random(in: 0...2)


func randomSign() -> OneSign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}


enum OneSign {
    
    
   
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
            
        }
    }
    

    
    func compare(opponent: OneSign) -> GameState {
               
        
        if self.emoji == "👊" && opponent.emoji == "👊" {
            return .draw
        } else if self.emoji == "✋" && opponent.emoji == "✋" {
            return .draw
        } else if self.emoji == "✌️" && opponent.emoji == "✌️" {
            return .draw
        } else if self.emoji == "👊" && opponent.emoji == "✋" {
            return .lose
        } else if self.emoji == "✋" && opponent.emoji == "👊" {
            return .win
        } else if self.emoji == "✌️" && opponent.emoji == "👊" {
            return .lose
        } else if self.emoji == "👊" && opponent.emoji == "✌️" {
            return .win
        } else if self.emoji == "✌️" && opponent.emoji == "✋" {
            return .win
        } else if self.emoji == "✋" && opponent.emoji == "✌️" {
            return .lose
        } else {
            return .draw
        }
 
        //        switch self.emoji {
        //        case "+":
        //            return .draw
        //        default:
        //            return .draw
        //        }
 
    }
    
}
