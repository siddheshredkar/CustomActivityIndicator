//
//  TMiconViewController.swift
//  TrueMedsiconAnimation
//
//  Created by Office on 6/11/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class TMiconViewController: UIViewController {
    
     var sizeDivider = CGFloat()
       
       let capsule = TrueMeds_icon()
      

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
         sizeDivider = 1
         configureTrueMeds_icon()
        
//        let pulse = PulseAnimation(numberOfPulse: 15, radius: 200, postion: self.view.center)
//              pulse.animationDuration = 1.0
//        pulse.backgroundColor = UIColor.init(hex: 0x22B573).cgColor
//              self.view.layer.insertSublayer(pulse, below: self.view.layer)
        
    }
    
    
    
    private func configureTrueMeds_icon(){
        view.addSubview(capsule)
        capsule.translatesAutoresizingMaskIntoConstraints = false
          
           
           NSLayoutConstraint.activate([
               capsule.centerYAnchor.constraint(equalTo: view.centerYAnchor),
               capsule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               capsule.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
               capsule.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
              
          
           ])
       }
}
