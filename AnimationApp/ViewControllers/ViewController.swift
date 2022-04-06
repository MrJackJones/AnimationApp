//
//  ViewController.swift
//  AnimationApp
//
//  Created by Ivan on 06.04.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringView!
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    var currentAnimation = Animation()
    var nextAnimation = Animation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        
        updateAnimationInfo(currentAnimation)
    }
    
    @IBAction func runButtonAction() {
        runButton.setTitle( "Run \(nextAnimation.animation)", for: .normal)
        
        updateAnimationInfo(currentAnimation)
        updateAnimation(currentAnimation)
        
        animationView.animate()
        
        currentAnimation = nextAnimation
        nextAnimation = Animation()
    }
    
}

extension ViewController {
    func updateAnimation(_ animation: Animation){
        animationView.animation = animation.animation
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.delay = CGFloat(animation.delay)
        animationView.duration = CGFloat(animation.duration)
    }
    
    func updateAnimationInfo(_ animation: Animation){
        animationLabel.text = animation.animation
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        delayLabel.text = String(format: "%.2f", animation.delay)
        durationLabel.text = String(format: "%.2f", animation.duration)
    }
}
