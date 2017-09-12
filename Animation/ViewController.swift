//
//  ViewController.swift
//  Animation
//
//  Created by Appinventiv Technologies on 09/09/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var internalBall: UIView!
    
    @IBOutlet var MainView: UIView!
    
    @IBOutlet weak var Ball: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        
        //
        var internalBallFrame: CGRect = internalBall.frame
        internalBallFrame.origin.x = internalBallFrame.origin.x
        internalBallFrame.origin.y = internalBallFrame.origin.y
        internalBallFrame.size.width = internalBallFrame.size.width
        internalBallFrame.size.height = internalBallFrame.size.height
        internalBall.frame = internalBallFrame
        
        
        
        //
        var frm: CGRect = MainView.frame
        frm.origin.x = frm.origin.x
        frm.origin.y = frm.origin.y
        frm.size.width = frm.size.width
        frm.size.height = frm.size.height
        MainView.frame = frm
        
        //Getting Ball Frame X,y Position
        
        var frameball: CGRect = Ball.frame
        frameball.origin.x = frameball.origin.x
        frameball.origin.y = frameball.origin.y
        frameball.size.width = frameball.size.width
        frameball.size.height = frm.size.height
        Ball.frame = frameball
        
       
        
        
        
      let cal = frameball.origin.y - frm.size.height // calculating internalBall y postion
        
        
        print(frm.size.height - frameball.origin.y)
        
        // Ball rounding
  Ball.layer.cornerRadius = self.Ball.frame.size.width/2

       
        Ball.layer.backgroundColor =  UIColor.red.cgColor
        Ball.layer.masksToBounds = true
        
        Ball.layer.borderWidth = 2
        Ball.layer.borderColor = UIColor.black.cgColor
        
        
        // internalBallRounding
        internalBall.layer.cornerRadius = self.internalBall.frame.size.width/2
        
        internalBall.layer.backgroundColor =  UIColor.blue.cgColor
        internalBall.layer.masksToBounds = true
        
        internalBall.layer.borderWidth = 2
        internalBall.layer.borderColor = UIColor.blue.cgColor
        
        
        UIView.animate(withDuration: 0.8, delay: 0.2,
                       usingSpringWithDamping:20, initialSpringVelocity:0.5,
                       
                       options:[.curveEaseInOut,.autoreverse,.repeat],
                       animations:{
                        
                        //UIView.setAnimationRepeatCount(5)
                        
                        
                        self.Ball.transform = CGAffineTransform(translationX: 1, y: cal-200 )
                      
   self.internalBall.transform = CGAffineTransform(translationX: 1,y: -68-133)
      
            
        },completion:nil
            
            
            )
        
        
        UIView.animate(withDuration: 0.2, delay: 0.2,
                       usingSpringWithDamping:20, initialSpringVelocity:0.5,
                       
                       options:[.curveEaseInOut,.autoreverse,.repeat],
                       animations:{
                        
                        //UIView.setAnimationRepeatCount(5)
                        
                     
                      
                        
                        
        },completion:nil
            
            
        )
           
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



