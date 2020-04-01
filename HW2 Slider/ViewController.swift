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
        
        colorButton.layer.cornerRadius = 30
        
        // Setup slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
    }
    
    @IBAction func getBackgraundColor() {
        if colorView.backgroundColor != UIColor.white  {
            view.backgroundColor = colorView.backgroundColor
        }
        
    }
    
    
//    // Color view
//    private func setColor() {
//        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
//                                            green: CGFloat(greenSlider.value),
//                                            blue: CGFloat(blueSlider.value),
//                                            alpha: 1)
//    }


}

