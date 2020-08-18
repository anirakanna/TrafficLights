//
//  ViewController.swift
//  TrafficLights
//
//  Created by Evgenia Shipova on 19.08.2020.
//  Copyright © 2020 Evgenia Shipova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = 70
        yellowLightView.layer.cornerRadius = 70
        greenLightView.layer.cornerRadius = 70
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        
        if Int(redLightView.alpha) == 0 && Int(yellowLightView.alpha) == 0 && Int(greenLightView.alpha) == 0 {
            startButton.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
        } else if yellowLightView.alpha == 1 {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        } else if greenLightView.alpha == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        }
    }
}

