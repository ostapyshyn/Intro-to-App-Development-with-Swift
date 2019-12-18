//
//  ViewController.swift
//  ColorMix
//
//  Created by Volodymyr Ostapyshyn on 12/18/19.
//  Copyright © 2019 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //colorView.backgroundColor = .black
        updateColor()
    }

    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
//        if sender.isOn {
//            colorView.backgroundColor = .red
//        } else {
//            colorView.backgroundColor = .black
//        }
        
        
    }
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        let color = UIColor(red: red, green: green,blue: blue, alpha: 1)
        colorView.backgroundColor = color
        
        
    }
    
}

