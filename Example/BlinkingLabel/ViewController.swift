//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by jli559 on 08/24/2017.
//  Copyright (c) 2017 jli559. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(origin: CGPoint(x: 10,y :20), size: CGSize(width: 200, height: 30)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(origin: CGPoint(x: 10,y :60), size: CGSize(width: 125, height: 30)))
        toggleButton.setTitle("Toggle Blinking", for: UIControlState.normal)
        toggleButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}

