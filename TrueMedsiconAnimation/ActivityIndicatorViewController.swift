//
//  ActivityIndicatorViewController.swift
//  TrueMedsiconAnimation
//
//  Created by Office on 6/11/20.
//  Copyright © 2020 Siddhesh Redkar. All rights reserved.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.activityStartAnimating(backgroundColor: UIColor.black.withAlphaComponent(0.4))

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension UIView{

func activityStartAnimating(backgroundColor: UIColor) {
    let backgroundView = UIView()
    backgroundView.frame = CGRect.init(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
    backgroundView.backgroundColor = backgroundColor
    backgroundView.tag = 475647

    let capsuleWaveView = CapsuleWaveBounce()
    capsuleWaveView.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
    capsuleWaveView.center = self.center
    self.isUserInteractionEnabled = false

    backgroundView.addSubview(capsuleWaveView)

    self.addSubview(backgroundView)
}

func activityStopAnimating() {
    if let background = viewWithTag(475647){
        background.removeFromSuperview()
    }
    self.isUserInteractionEnabled = true
}

}

