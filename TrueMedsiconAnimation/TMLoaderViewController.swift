//
//  TMLoaderViewController.swift
//  TrueMedsiconAnimation
//
//  Created by Office on 6/11/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class TMLoaderViewController: UIViewController {
    
     var sizeDivider = CGFloat()
       
       let capsule = CapsuleView()
       let heart = HeartButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
         sizeDivider = 3
         configureTrueMeds_icon()
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 1, delay: 0, options: [.curveLinear,.repeat], animations: {
              UIView.setAnimationRepeatCount(3000)
              self.heart.alpha = 0.0
        }, completion: {_ in
            self.heart.alpha = 1.0
        })
        
        
        
        let pulse = PulseAnimation(numberOfPulse: 15, radius: 200, postion: self.view.center)
              pulse.animationDuration = 1.0
        pulse.backgroundColor = UIColor.init(hex: 0x22B573).cgColor
              self.view.layer.insertSublayer(pulse, below: self.view.layer)
        
    }
    
    
    
    private func configureTrueMeds_icon(){
        view.addSubview(capsule)
        view.addSubview(heart)
         
           
           capsule.translatesAutoresizingMaskIntoConstraints = false
           heart.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               capsule.centerYAnchor.constraint(equalTo: view.centerYAnchor),
               capsule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               capsule.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
               capsule.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
               
               heart.trailingAnchor.constraint(equalTo: capsule.leadingAnchor,constant: 20/sizeDivider),
               heart.bottomAnchor.constraint(equalTo: capsule.bottomAnchor,constant: 80/sizeDivider),
               heart.widthAnchor.constraint(equalToConstant: 120/sizeDivider),
               heart.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
          
           ])
       }
}


extension UIColor {
    
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    
}
