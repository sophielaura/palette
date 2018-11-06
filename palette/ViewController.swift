//
//  ViewController.swift
//  palette
//
//  Created by User23 on 2018/11/6.
//  Copyright © 2018 User23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redSliderValue: UILabel!
    
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    @IBOutlet weak var alphaSliderValue: UILabel!
    
    @IBAction func sliderChange(_ sender: Any) {
    
        imageView.backgroundColor=UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        redSliderValue.text=String(Int(redSlider.value*255))
        greenSliderValue.text=String(Int(greenSlider.value*255))
        blueSliderValue.text=String(Int(blueSlider.value*255))
        alphaSliderValue.text=String(format:"%.1f",alphaSlider.value)
    
    }
    
}



