//
//  ViewController.swift
//  SrpingAnimation
//
//  Created by Armen Madoyan on 28.01.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var springView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = animation.fullParametrs
    }


    @IBAction func startAnimation(_ sender: SpringButton) {

        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration


        springView.animate()
        
        presetLabel.text = animation.fullParametrs
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

