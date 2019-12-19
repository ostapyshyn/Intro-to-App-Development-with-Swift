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
        updateControls()
        updateColor()
        colorView.layer.borderWidth = 3
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.gray.cgColor
        
    }

    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls()
        updateColor()
//        if sender.isOn {
//            colorView.backgroundColor = .red
//        } else {
//            colorView.backgroundColor = .black
//        }
        
        
    }
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        
        
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green,blue: blue, alpha: 1)
        
        colorView.backgroundColor = color       
        
    }
    
    @IBAction func reset(_ sender: Any) {
        updateControls()
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        updateColor()
        
    }
    
    
}

