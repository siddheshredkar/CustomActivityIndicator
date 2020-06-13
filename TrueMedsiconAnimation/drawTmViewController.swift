//
//  drawTmViewController.swift
//  TrueMedsiconAnimation
//
//  Created by Office on 6/11/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class drawTmViewController: UIViewController {
    
    var sizeDivider = CGFloat()
    let fisrtView = FirstView()
    let secondView = SecondView2()
    let thirdView = Heart()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       sizeDivider = 1
       configureFirstView()
        
//        self.fisrtView.alpha = 0.0
//        self.secondView.alpha = 0.0
//        self.thirdView.alpha = 0.0
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2, delay: 0, options: [.curveLinear,.repeat], animations: {
                   UIView.setAnimationRepeatCount(3000)
                    self.fisrtView.alpha = 0.0
     
            }) { (finished) in
               
                print("Finished1")
            }
           
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2, delay: 0.5, options: [.curveLinear,.repeat], animations: {
                   UIView.setAnimationRepeatCount(3000)
                self.secondView.alpha = 0.0
            }) { (finished) in

                print("Finished2")
            }


            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2, delay: 1, options: [.curveLinear,.repeat], animations: {
                   UIView.setAnimationRepeatCount(3000)
                 self.thirdView.alpha = 0.0
            }) { (finished) in

                print("Finished3")
            }

    }
    
    
    private func configureFirstView(){
        view.addSubview(secondView)
        view.addSubview(fisrtView)
        view.addSubview(thirdView)
        
        fisrtView.translatesAutoresizingMaskIntoConstraints = false
        secondView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
          
           
           NSLayoutConstraint.activate([
            
            secondView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            secondView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondView.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
            secondView.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
                       
            fisrtView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fisrtView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            fisrtView.widthAnchor.constraint(equalToConstant: 40/sizeDivider),
            fisrtView.heightAnchor.constraint(equalToConstant: 50/sizeDivider),
            
            
            thirdView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor,constant: 20/sizeDivider),
            thirdView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor,constant: 10/sizeDivider),
            thirdView.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
            thirdView.heightAnchor.constraint(equalToConstant: 60/sizeDivider),
            

          
           ])
       }
    
}













class FirstView: UIView {

    var sizeDivider = CGFloat()
    

    let frontCap = UIView()
    let capsuleShine = Shine()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        sizeDivider = 1
        configureCapsule()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCapsule(){
       
        
         
         addSubview(frontCap)
         addSubview(capsuleShine)
        
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




class SecondView2: UIView {

    var sizeDivider = CGFloat()
    
    let capsuleShape = UIView()
    
    
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
        
         capsuleShape.layer.cornerRadius = 30/sizeDivider
         capsuleShape.backgroundColor = #colorLiteral(red: 0, green: 0.4431372549, blue: 0.737254902, alpha: 1)
         capsuleShape.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
             capsuleShape.centerYAnchor.constraint(equalTo: self.centerYAnchor),
             capsuleShape.centerXAnchor.constraint(equalTo: self.centerXAnchor),
             capsuleShape.widthAnchor.constraint(equalToConstant: 60/sizeDivider),
             capsuleShape.heightAnchor.constraint(equalToConstant: 120/sizeDivider),
  
                  
         ])
         
    }

}


class Shine: UIView {

    
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



class Heart: UIButton {
    
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
            bezierPath.fill(with: .color, alpha: 1)
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
       
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    
}



