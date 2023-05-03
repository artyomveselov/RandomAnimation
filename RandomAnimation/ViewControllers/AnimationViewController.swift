//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Артём Веселов on 03.05.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    private var animation = Animation.getAnimation()
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    
    override func viewDidLoad() {
        updateLabels()
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        updateLabels()
        
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
        springView.animate()
    }
}

extension AnimationViewController {
    private func updateLabels() {
        presetLabel.text = animation.name
        curveLabel.text = animation.curve
        forceLabel.text = "\(animation.force)"
        durationLabel.text = "\(animation.duration)"
        delayLabel.text = "\(animation.delay)"
    }
}

