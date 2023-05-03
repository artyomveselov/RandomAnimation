//
//  Animation.swift
//  RandomAnimation
//
//  Created by Артём Веселов on 03.05.2023.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimation() -> Animation {
        let animationQuantity = DataStore.shared.animations.count
        let curveQuantity = DataStore.shared.curves.count
        
        
        let iterationCount = min(animationQuantity, curveQuantity)
        
        
        let randomAnimationName = DataStore.shared.animations[Int.random(in: 0...iterationCount)]
        let randomAnimationCurve = DataStore.shared.curves[Int.random(in: 0...iterationCount)]
        let randomAnimationForce = floor(CGFloat.random(in: 1...5))
        let randomAnimationDuration = floor(CGFloat.random(in: 1...5))
        let randomAnimationDelay = floor(CGFloat.random(in: 1...5))
        
        
        let animationPreferences = Animation(
                name: randomAnimationName,
                curve: randomAnimationCurve,
                force: randomAnimationForce,
                duration: randomAnimationDuration,
                delay: randomAnimationDelay
            )
        
        return animationPreferences
    }
}

