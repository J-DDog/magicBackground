//
//  ViewController.swift
//  magicBackground
//
//  Created by Kerr, Jared on 12/17/15.
//  Copyright © 2015 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var redColor = CGFloat(Double(0.5))
    var greenColor = CGFloat(Double(0.5))
    var blueColor = CGFloat(Double(0.5))
    var opa = CGFloat(Double(1.0))
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var opacitySwitch: UISwitch!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redSliderChanged(sender: UISlider)
    {
        redColor = CGFloat(Double(redSlider.value))
        changeColor()
    }
    
    @IBAction func greenSliderChanged(sender: UISlider)
    {
        greenColor = CGFloat(Double(greenSlider.value))
        changeColor()
    }
    
    @IBAction func blueSliderChanged(sender: UISlider)
    {
        blueColor = CGFloat(Double(blueSlider.value))
        changeColor()
    }
    
    @IBAction func switched(sender: UISwitch)
    {
        if(opacitySwitch.on)
        {
            opa = CGFloat(Double(1.0))
            redLabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            greenLabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            blueLabel.textColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        else
        {
            opa = CGFloat(Double(0.0))
            
            redLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            blueLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            greenLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
        changeColor()
        
    }
    
    
    func changeColor()
    {
        view.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: opa)
    }

}

