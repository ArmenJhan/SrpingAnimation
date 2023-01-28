//
//  DataStore.swift
//  SrpingAnimation
//
//  Created by Armen Madoyan on 28.01.2023.
//

import SpringAnimation
class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init(){}
}
