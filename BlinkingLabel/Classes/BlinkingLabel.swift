//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by jli on 24/08/2017.
//

import Foundation
public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = .repeat
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
