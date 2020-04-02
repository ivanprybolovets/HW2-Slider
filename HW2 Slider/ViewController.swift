//
//  ViewController.swift
//  HW2 Slider
//
//  Created by Ivan Prybolovetz on 4/1/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var colorButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 30
        
//        colorButton.layer.cornerRadius = 30
        
        // Setup slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValueForLabel()
        setValueForTextField()
        
//        redSlider.value = 1
//        redSlider.minimumValue = 0
//        redSlider.maximumValue = 1
//        redTextField.text = String(redSlider.value)
    }    
   
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        
        switch sender.tag {
        case 0:
            redLabel.text = string(from: sender)
            redTextField.text = string(from: sender)
        case 1:
            greenLabel.text = string(from: sender)
            greenTextField.text = string(from: sender)
        case 2:
            blueLabel.text = string(from: sender)
            blueTextField.text = string(from: sender)
        default:
            break
        }
        
        setColor()
    }
    
    @IBAction func getBackgraundColor() {
        if colorView.backgroundColor != UIColor.white  {
            view.backgroundColor = colorView.backgroundColor
        }
    }
    
    @IBAction func tapOfKeybord() {
        redTextField.resignFirstResponder()
        greenTextField.resignFirstResponder()
        blueTextField.resignFirstResponder()
    }
    
    private func setValueForLabel() {
        redLabel.text = redTextField.text
        greenLabel.text = greenTextField.text
        blueLabel.text =  blueTextField.text
    }
    
    private func setValueForTextField() {
        blueTextField.text = string(from: blueSlider)
        greenTextField.text = string(from: greenSlider)
        redTextField.text = string(from: redSlider)
    }
    
    // Сast value RGB
    private func string(from slider: UISlider) -> String {
        return String(format: "%.2f", slider.value)
    }

    // Color view
    private func setColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }


}

