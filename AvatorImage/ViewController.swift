//
//  ViewController.swift
//  AvatorImage
//
//  Created by JOEL CRAWFORD on 4/28/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//https://stackoverflow.com/questions/39569987/passing-only-some-touch-events-from-one-view-to-another-view

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var gestureRecognizer: UITapGestureRecognizer!
    
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
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
       
        
        
                scrollView.addSubview(imageView)
        
                self.view.addSubview(upLabel)
                self.view.addSubview(downLabel)
                self.view.addSubview(leftLabel)
                self.view.addSubview(rightLabel)
        
                 imageView.isUserInteractionEnabled = true
        

        
                //to remove USEAUTOCONSTRAINTS
                for constraint in self.view.constraints {
                
                    constraint.isActive = false }
    
                    alignView()
        
        
       
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {

        return self.imageView
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
    
    





//extension UIImageView {
//  func enableZoom() {
//    let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(startZooming(_:)))
//    isUserInteractionEnabled = true
//    addGestureRecognizer(pinchGesture)
//  }
//
//  @objc
//  private func startZooming(_ sender: UIPinchGestureRecognizer) {
//    let scaleResult = sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale)
//    guard let scale = scaleResult, scale.a > 1, scale.d > 1 else { return }
//    sender.view?.transform = scale
//    sender.scale = 1
//  }
//}








