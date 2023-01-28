//
//  Animation.swift
//  SrpingAnimation
//
//  Created by Armen Madoyan on 28.01.2023.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    
    var fullParametrs: String {
            """
            Preset: \(preset)
            Curve" \(curve)
            Force: \(String(format: "%.2f", force))
            Duration: \(String(format: "%.2f",duration))
            """
    }
    
    static func getAnimation() -> Animation {
        
        let presents = DataStore.shared.presets
        let curves = DataStore.shared.curves
        let force = Double.random(in: 0.8...1.3)
        let duration = Double.random(in: 0.70...1.2)
        
        let animation = Animation(
            preset: presents.randomElement()?.rawValue ?? "",
            curve: curves.randomElement()?.rawValue ?? "",
            force: force,
            duration: duration
        )
        
        return animation
    }
}
