//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Volodymyr Ostapyshyn on 12/25/19.
//  Copyright © 2019 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet weak var topSign: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var fist: UIButton!
    
    @IBOutlet weak var palm: UIButton!
    
    @IBOutlet weak var scissors: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBAction func fistDidPressed(_ sender: Any) {
        play(signs: .rock)
    }
    
    @IBAction func palmDidPressed(_ sender: Any) {
        play(signs: .paper)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        updateView(option: .start)
    }
    
    @IBAction func scissorsDidPressed(_ sender: Any) {
        play(signs: OneSign.scissors)
    }
    
    
    
    
    func play(signs: OneSign)  {
        
        let rand = randomSign()
        
        
        
   
        
        let state = signs.compare(opponent: rand)
        updateView(option: state)
        topSign.text = rand.emoji
        
        fist.isEnabled = false
        palm.isEnabled = false
        scissors.isEnabled = false
        
        if signs == .paper {
            fist.isHidden = true
            scissors.isHidden = true
        }
        
        if signs == .rock {
            palm.isHidden = true
            scissors.isHidden = true
        }
        
        if signs == .scissors {
            palm.isHidden = true
            fist.isHidden = true
        }
        
        playAgain.isHidden = false
        
        
        
        
        
        
    }
    
    
    
    func updateView(option: GameState) {
        
        switch option {
        case .start:
            self.view.backgroundColor = #colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1)
            status.text = "Rock, Paper, Scissors?"
            topSign.text = "🤖"
            
            playAgain.isHidden = true
            
            fist.isEnabled = true
            palm.isEnabled = true
            scissors.isEnabled = true
            
            palm.isHidden = false
            fist.isHidden = false
            scissors.isHidden = false
            
            
            
        case .draw:
            self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            status.text = "Draw!"
        case .win:
            self.view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            status.text = "You Won!"
        case .lose:
            self.view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            status.text = "You Lose!"
            
        }
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView(option: .start)
        
        
    }
    
    
}

