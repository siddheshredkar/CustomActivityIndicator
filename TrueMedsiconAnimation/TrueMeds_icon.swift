//
//  TrueMeds_icon.swift
//  TrueMedsiconAnimation
//
//  Created by Office on 6/11/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import Foundation
import UIKit

class TrueMeds_icon: UIView {
    
    var sizeDivider = CGFloat()
    
    let capsule = CapsuleView()
    let heart = HeartButton()
    
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        sizeDivider = 2
        configureTrueMeds_icon()
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 1, delay: 0, options: [.curveLinear,.repeat], animations: {
                   UIView.setAnimationRepeatCount(3000)
                   self.heart.alpha = 0.0
             }, completion: {_ in   })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    private func configureTrueMeds_icon(){
        
        addSubview(capsule)
        addSubview(heart)
        
        capsule.translatesAutoresizingMaskIntoConstraints = false
        heart.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            capsule.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            capsule.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            capsule.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
            capsule.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
            
            heart.trailingAnchor.constraint(equalTo: capsule.leadingAnchor,constant: 20/sizeDivider),
            heart.bottomAnchor.constraint(equalTo: capsule.bottomAnchor,constant: 80/sizeDivider),
            heart.widthAnchor.constraint(equalToConstant: 120/sizeDivider),
            heart.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
       
        ])
    }
    
}




class CapsuleView: UIView {

    var sizeDivider = CGFloat()
    
    let capsuleShape = UIView()
    let frontCap = UIView()
    let capsuleShine = CapsuleShine()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        sizeDivider = 1
        configureCapsule()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCapsule(){
       
        
         addSubview(capsuleShape)
         addSubview(frontCap)
         addSubview(capsuleShine)
         capsuleShape.layer.cornerRadius = 30/sizeDivider
         capsuleShape.backgroundColor = #colorLiteral(red: 0, green: 0.4431372549, blue: 0.737254902, alpha: 1)
         capsuleShape.translatesAutoresizingMaskIntoConstraints = false
        
         frontCap.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
         frontCap.translatesAutoresizingMaskIntoConstraints = false
    
        
        
         capsuleShine.translatesAutoresizingMaskIntoConstraints = false
        
        if #available(iOS 11.0, *){
                   frontCap.clipsToBounds = false
                   frontCap.layer.cornerRadius = 20/sizeDivider
            frontCap.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]
           
        }else{
                   frontCap.layer.cornerRadius = 20/sizeDivider
        }
        
  
                 
         
         
         NSLayoutConstraint.activate([
             capsuleShape.centerYAnchor.constraint(equalTo: self.centerYAnchor),
             capsuleShape.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             capsuleShape.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
             capsuleShape.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
             
             frontCap.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             frontCap.bottomAnchor.constraint(equalTo: self.centerYAnchor),
             frontCap.widthAnchor.constraint(equalToConstant: 40/sizeDivider),
             frontCap.heightAnchor.constraint(equalToConstant: 50/sizeDivider),
             
             capsuleShine.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             capsuleShine.bottomAnchor.constraint(equalTo: frontCap.bottomAnchor,constant: -10/sizeDivider),
             capsuleShine.widthAnchor.constraint(equalToConstant: 20/sizeDivider),
             capsuleShine.heightAnchor.constraint(equalToConstant: 30/sizeDivider),
                  
         ])
         
    }
    

    

}



class CapsuleShine: UIView {

    
    let frontCap2 = UIView()
    var sizeDivider = CGFloat()
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        sizeDivider = 1
        configureCapsule()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureCapsule(){
      
         addSubview(frontCap2)
        
         frontCap2.backgroundColor =  #colorLiteral(red: 0, green: 0.4431372549, blue: 0.737254902, alpha: 1)
    
        
        if #available(iOS 11.0, *){
              frontCap2.clipsToBounds = false
              frontCap2.layer.cornerRadius = 12.5/sizeDivider
              frontCap2.layer.maskedCorners = [.layerMinXMinYCorner]
        }else{
              frontCap2.layer.cornerRadius = 12.5/sizeDivider
        }
        
        let rightBorder = UIView()
              rightBorder.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
              rightBorder.autoresizingMask = [.flexibleHeight, .flexibleLeftMargin]
        rightBorder.frame = CGRect(x: frame.size.width - (12.5/sizeDivider), y: 0, width: 12.5/sizeDivider, height: frame.size.height)
              frontCap2.addSubview(rightBorder)
        
        let bottomBorder = UIView()
        
        if #available(iOS 11.0, *){
              bottomBorder.clipsToBounds = false
            bottomBorder.layer.cornerRadius = 12.5/sizeDivider
              bottomBorder.layer.maskedCorners = [.layerMinXMinYCorner]
        }else{
            bottomBorder.layer.cornerRadius = 12.5/sizeDivider
        }
        
           bottomBorder.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           bottomBorder.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
           bottomBorder.frame = CGRect(x: 5/sizeDivider, y: frame.size.height - (27/sizeDivider), width: 1/sizeDivider, height: 27/sizeDivider)
        frontCap2.addSubview(bottomBorder)
    
        frontCap2.translatesAutoresizingMaskIntoConstraints = false
  
         
         NSLayoutConstraint.activate([
            
             frontCap2.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             frontCap2.centerYAnchor.constraint(equalTo: self.centerYAnchor),
             frontCap2.widthAnchor.constraint(equalToConstant: 25/sizeDivider),
             frontCap2.heightAnchor.constraint(equalToConstant: 30/sizeDivider),
                  
         ])
         
    }
    

    

}




class HeartButton: UIButton {
    
    var filled: Bool = true
    var strokeColor: UIColor = UIColor.init(hex: 0x22B573)

    override func draw(_ rect: CGRect) {
        
        let bezierPath = UIBezierPath(heartIn: self.bounds)
        self.strokeColor.setStroke()
        bezierPath.lineWidth = rect.width * 0.1
        bezierPath.stroke(with: .color, alpha: 1)

        if self.filled {
            self.tintColor = UIColor.white
            self.tintColor.setFill()
            bezierPath.fill(with: .color, alpha: 0.5)
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
       
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    
}

extension UIBezierPath {
    convenience init(heartIn rect: CGRect) {
        self.init()

        //Calculate Radius of Arcs using Pythagoras
        let sideOne = rect.width * 0.4
        let sideTwo = rect.height * 0.3
        let arcRadius = sqrt(sideOne*sideOne + sideTwo*sideTwo)/2

        //Left Hand Curve
        self.addArc(withCenter: CGPoint(x: rect.width * 0.3, y: rect.height * 0.35), radius: arcRadius, startAngle: 135.degreesToRadians, endAngle: 315.degreesToRadians, clockwise: true)

        //Top Centre Dip
        self.addLine(to: CGPoint(x: rect.width/2, y: rect.height * 0.2))

        //Right Hand Curve
        self.addArc(withCenter: CGPoint(x: rect.width * 0.7, y: rect.height * 0.35), radius: arcRadius, startAngle: 225.degreesToRadians, endAngle: 45.degreesToRadians, clockwise: true)

        //Right Bottom Line
        self.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.95))

        //Left Bottom Line
        self.close()
    }
}



extension Int {
    var degreesToRadians: CGFloat { return CGFloat(self) * .pi / 180 }
}
