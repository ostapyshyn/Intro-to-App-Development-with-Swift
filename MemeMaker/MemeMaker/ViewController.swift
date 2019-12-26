//
//  ViewController.swift
//  MemeMaker
//
//  Created by Volodymyr Ostapyshyn on 12/25/19.
//  Copyright © 2019 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var songlist: [CaptionOption] = []
    
    @IBOutlet weak var img: UIImageView!
    
    
    
    var topChoices: [CaptionOption] = [CaptionOption(emoji: "🕶", caption: "You know what's cool?",imgName: "wolf"),CaptionOption(emoji: "💥", caption: "You know what makes me mad?",imgName: "cat"),CaptionOption(emoji: "💕", caption: "You know what I love?", imgName: "25w3")]
    
    var bottomChoices: [CaptionOption] = [CaptionOption(emoji: "🐱", caption: "Cats wearing hats", imgName: "wolf"), CaptionOption(emoji: "🐒", caption: "Monkeys being funky", imgName: "mouse"), CaptionOption(emoji: "🐕", caption: "Dog carrying logs", imgName: "cat")]
    
    
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    @IBAction func segmentPressed(_ sender: Any) {
        setCaption()
        
    }
    
    func setCaption() {
        let topCaption = topChoices[topCaptionSegmentedControl.selectedSegmentIndex]
        let bottomCaption = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex]
        topCaptionLabel.text = topCaption.caption
        bottomCaptionLabel.text = bottomCaption.caption
        img.image = UIImage(named: topCaption.imgName)
        
        
//        if bottomCaptionSegmentedControl.selectedSegmentIndex == 0 {
//            img.image = UIImage(named: "25w3")
//
//        }
//        if topCaptionSegmentedControl.selectedSegmentIndex == 0 {
//            img.image = UIImage(named: "wolf")
//        }
        
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        setCaption()
        
        
    }
    
    
}

