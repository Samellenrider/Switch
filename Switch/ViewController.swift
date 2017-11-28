//
//  ViewController.swift
//  Switch
//
//  Created by Sam Ellenrieder on 26/11/2017.
//  Copyright © 2017 Sam Ellenrieder. All rights reserved.
//

import UIKit

extension UIView {
    
    func backgroundcolour(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}


class ViewController: UIViewController {
    
    @IBOutlet var background: UIView!
    
    @IBOutlet weak var cheap: UISwitch!
    
    @IBOutlet weak var quality: UISwitch!
    
    @IBOutlet weak var fast: UISwitch!
    
    @IBOutlet weak var superDuper: UISwitch!
    
    
    @IBAction func cheapButton(_ sender: UISwitch) {
        if(sender.isOn == true && quality.isOn == true){
            fast.setOn(false, animated: true)
        } else if(sender.isOn == false){
            quality.setOn(true, animated: true)
            fast.setOn(true, animated: true)
            superDuper.setOn(false, animated: true)
        }
    }
    
    
    @IBAction func qualitySwitch(_ sender: UISwitch) {
        if(sender.isOn == true && fast.isOn == true){
            cheap.setOn(false, animated: true)
        } else if(sender.isOn == false){
            fast.setOn(true, animated: true)
            cheap.setOn(true, animated: true)
            superDuper.setOn(false, animated: true)
        }
    }
    
    @IBAction func fastSwitch(_ sender: UISwitch) {
        if(sender.isOn == true && cheap.isOn == true) {
            quality.setOn(false, animated: true)
        } else if(sender.isOn == false){
            cheap.setOn(true, animated: true)
            quality.setOn(true, animated: true)
            superDuper.setOn(false, animated: true)
        }
    }
    
    
    @IBAction func superSwitch(_ sender: UISwitch) {
        if(sender.isOn == true){
            fast.setOn(true, animated: true)
            cheap.setOn(true, animated: true)
            quality.setOn(true, animated: true)
        } else {
            fast.setOn(false, animated: true)
            cheap.setOn(false, animated: true)
            quality.setOn(false, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        background.backgroundColor(colorOne: UIColor.blue, colorTwo: UIColor.white)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


