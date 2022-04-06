//
//  Animation.swift
//  AnimationApp
//
//  Created by Ivan on 06.04.2022.
//

import Foundation
import Spring

struct Animation {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    init() {
        animation = Spring.AnimationPreset.allCases.shuffled()[0].rawValue
        curve = Spring.AnimationCurve.allCases.shuffled()[0].rawValue
        force = Float.random(in: 0.2..<1.5)
        duration = Float.random(in: 0.5..<1.5)
        delay = Float.random(in: 0.3..<1)
    }
}
