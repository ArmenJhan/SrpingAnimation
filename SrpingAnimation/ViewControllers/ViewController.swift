//
//  ViewController.swift
//  SrpingAnimation
//
//  Created by Armen Madoyan on 28.01.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var springView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    
    // MARK: Private properties
    private var animation = Animation.getAnimation()
    
    //MARK: Life Circle View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = animation.description
    }

    //MARK: IBActions
    @IBAction func startAnimation(_ sender: UIButton) {
        presetLabel.text = animation.description

        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration

        springView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

