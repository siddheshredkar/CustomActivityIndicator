//
//  CapsuleWaveView.swift
//  True_Meds
//
//  Created by Office on 6/11/20.
//

import Foundation


import UIKit

class CapsuleWaveView: UIView {
    
    let hStackView = UIStackView()
    let capsule1 = Capsule()
    let capsule2 = Capsule()
    let capsule3 = Capsule()
    
    var sizeDivider = CGFloat()
  
    
    override init(frame: CGRect) {
        super.init(frame:frame)
       sizeDivider = 1.5
          //backgroundColor = .white
          setuphStackView()
          setupCapsule()
          
        
          
          
          UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0, options: [.curveLinear,.repeat], animations: {
                 UIView.setAnimationRepeatCount(3000)
                 //self.capsule1.transform = CGAffineTransform(translationX: 0, y:-20)
                 self.capsule1.transform = self.capsule1.transform.translatedBy(x: 0, y: -20)
          }) { (finished) in
              //self.capsule1.transform = CGAffineTransform(translationX: 0, y:20)
              print("Finished1")
          }
         
          UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0.2, options: [.curveLinear,.repeat], animations: {
                 UIView.setAnimationRepeatCount(3000)
                 //self.capsule2.transform = CGAffineTransform(translationX: 0, y:-20)
              self.capsule2.transform = self.capsule2.transform.translatedBy(x: 0, y: -20)
          }) { (finished) in
             // self.capsule2.transform = CGAffineTransform(translationX: 0, y:20)
              
              print("Finished2")
          }
          
          
          UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0.4, options: [.curveLinear,.repeat], animations: {
                 UIView.setAnimationRepeatCount(3000)
                // self.capsule3.transform = CGAffineTransform(translationX: 0, y:-20)
              self.capsule3.transform = self.capsule3.transform.translatedBy(x: 0, y: -20)
          }) { (finished) in
             // self.capsule3.transform = CGAffineTransform(translationX: 0, y:20)
           
              print("Finished3")
          }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    
    
    fileprivate func setuphStackView(){
        hStackView.addArrangedSubview(capsule1)
        hStackView.addArrangedSubview(capsule2)
        hStackView.addArrangedSubview(capsule3)
        
        hStackView.axis = .horizontal
        hStackView.distribution = .fillEqually
        hStackView.spacing = 20/sizeDivider
    }
    
    
    
    
    
    fileprivate func setupCapsule(){
        addSubview(hStackView)
        hStackView.translatesAutoresizingMaskIntoConstraints = false
                

        NSLayoutConstraint.activate([
            hStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            hStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            hStackView.widthAnchor.constraint(equalToConstant: 80/sizeDivider),
            hStackView.heightAnchor.constraint(equalToConstant: 60/sizeDivider)
                 
        ])
        
    }

}





class CapsuleWaveBounce: UIView {
    
    let hStackView = UIStackView()
    let capsule1 = Capsule()
    let capsule2 = Capsule()
    let capsule3 = Capsule()
   
    
    var sizeDivider = CGFloat()
  
    
    override init(frame: CGRect) {
        super.init(frame:frame)
       sizeDivider = 1
          //backgroundColor = .white
          setuphStackView()
          setupCapsule()
          
          
        
    
        
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .transitionCurlUp, .repeat], animations: {
             self.capsule3.transform = self.capsule3.transform.translatedBy(x: 0, y: 20)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.2, options: [.autoreverse, .transitionCurlUp, .repeat], animations: {
                    self.capsule2.transform = self.capsule2.transform.translatedBy(x: 0, y: 20)
               }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: [.autoreverse, .transitionCurlUp, .repeat], animations: {
                    self.capsule1.transform = self.capsule1.transform.translatedBy(x: 0, y: 20)
               }, completion: nil)
    
        

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    
    
    fileprivate func setuphStackView(){
        hStackView.addArrangedSubview(capsule1)
        hStackView.addArrangedSubview(capsule2)
        hStackView.addArrangedSubview(capsule3)
        
        hStackView.axis = .horizontal
        hStackView.distribution = .fillEqually
        hStackView.spacing = 20/sizeDivider
    }
    
    
    
    
    
    fileprivate func setupCapsule(){
        addSubview(hStackView)
        hStackView.translatesAutoresizingMaskIntoConstraints = false
                

        NSLayoutConstraint.activate([
            hStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            hStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            hStackView.widthAnchor.constraint(equalToConstant: 50/sizeDivider),
            hStackView.heightAnchor.constraint(equalToConstant: 40/sizeDivider)
                 
        ])
        
    }

}


class Capsule: UIView {

    var sizeDivider = CGFloat()
    
    let capsuleShape = UIView()
    let frontCap = UIView()
    let capsuleShine = Shine2()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        sizeDivider = 3
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



class Shine2: UIView {

    
    let frontCap2 = UIView()
    var sizeDivider = CGFloat()
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        sizeDivider = 3
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
              rightBorder.frame = CGRect(x: frame.size.width - 8/sizeDivider, y: 0, width: 8/sizeDivider, height: frame.size.height)
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





