//
//  ViewController.swift
//  AvatorImage
//
//  Created by JOEL CRAWFORD on 4/28/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//https://stackoverflow.com/questions/39569987/passing-only-some-touch-events-from-one-view-to-another-view

import UIKit

class ViewController: UIViewController {
    
    let avatorImageWidth: CGFloat = 80.0
    
    let avatorImageHeight: CGFloat = 80.0
    
    
    @IBOutlet weak var upLabel: UILabel!
    
    
    @IBOutlet weak var downLabel: UILabel!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
               scrollView.addSubview(imageView)
        
               imageView.addSubview(upLabel)
               imageView.addSubview(downLabel)
               imageView.addSubview(leftLabel)
               imageView.addSubview(rightLabel)
        
        
        //to remove USEAUTOCONSTRAINTS
        for constraint in self.view.constraints {
        
            constraint.isActive = false }
        
    
        alignView()
        
        
       
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func alignView() {
           
           upLabel.alpha = 0.4
           downLabel.alpha = 0.4
           leftLabel.alpha = 0.4
           rightLabel.alpha = 0.4
        
        upLabel.isUserInteractionEnabled = false

        downLabel.isUserInteractionEnabled = false
        leftLabel.isUserInteractionEnabled = false
        rightLabel.isUserInteractionEnabled = false
        
        scrollView.isUserInteractionEnabled = true

        
        
       
        
    
           
           upLabel.frame = CGRect(x: 0.0, y: 0.0, width: upLabel.frame.size.width, height: (imageView.frame.size.height - 80.0)/2)
           
           
           
        downLabel.frame = CGRect(x: 0.0, y: upLabel.frame.size.height + 80.0, width: downLabel.frame.size.width, height: (imageView.frame.size.height - 80.0)/2)
           
           
        leftLabel.frame = CGRect(x: 0.0, y: upLabel.frame.size.height, width: (imageView.frame.size.width - 80.0)/2, height: 80.0)
           
           
           
           
           rightLabel.frame = CGRect(x: (imageView.frame.size.width + 80.0)/2, y: upLabel.frame.size.height, width: (imageView.frame.size.width - 80.0)/2, height: 80.0)
           
           //height: (UIScreen.main.bounds.width - 80.0)/2)
           
       }
    
    
    
    
    
    
    
    



}











//class PassthroughView: UIView {
//
//
//    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
//
//
//        guard let scrollView = subviews.first else {
//
//            return false
//
//
//        }
//
//        return scrollView.hitTest(convert(point, to: scrollView), with: event) != nil
//    }
    
//    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
//
//        let view = super.hitTest(point, with: event)
//
//
//        return view == self ? nil : view
//
//    }
    
//}


//class IgnoreTouchView : UIView {
//    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
//        let hitView = super.hitTest(point, with: event)
//        if hitView == self {
//            return nil
//        }
//        return hitView
//    }
//}
