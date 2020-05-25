//
//  ViewController.swift
//  AvatorImage
//
//  Created by JOEL CRAWFORD on 4/28/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//https://stackoverflow.com/questions/39569987/passing-only-some-touch-events-from-one-view-to-another-view

//https://stackoverflow.com/questions/39460256/uiscrollview-zooming-contentinset

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
        
    //   let pinchMethod = UIPinchGestureRecognizer(target: self, action: #selector(pinchImage(sender:)))
     //   imageView.addGestureRecognizer(pinchMethod)
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        //scrollView.zoomScale = 1.0
       
        
        
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
    
    
    
     
    
//    @objc func pinchImage(sender: UIPinchGestureRecognizer) {
//
//       // guard let sender.view != nil else { return }
//
//        //guard case sender.view != nil else {return}
//
//        if let scale = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale)) {
////          guard scale.a > 1.0 else { return }
////          guard scale.d > 1.0 else { return }
////
////          guard scale.c > 1.0 else { return }
////
////          guard scale.b > 1.0 else { return }
////
//          //sender.view?.transform = scale
//          //sender.scale = 1.0
//
//         }
//
//
//
////        if sender.state == .ended || sender.state == .changed {
////
////        let currentScale = self.view.frame.size.width / self.view.bounds.size.width
////
////            var newScale = currentScale * sender.scale
////
////            if newScale < 1 {
////                newScale = 1
////            }
////
////            if newScale > 9 {
////                newScale = 9
////            }
////
////
////            let transform = CGAffineTransform(scaleX: newScale, y: newScale)
////
////
////            self.imageView?.transform = transform
////            sender.scale = 1
////
////        }
//
//
//    }
    
    
        
    }
    
    




extension UIImageView {
  func enableZoom() {
    let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(startZooming(_:)))
    isUserInteractionEnabled = true
    addGestureRecognizer(pinchGesture)
  }
    

  @objc
  private func startZooming(_ sender: UIPinchGestureRecognizer) {
    let scaleResult = sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale)
    guard let scale = scaleResult, scale.a > 1, scale.d > 1 else { return }
    sender.view?.transform = scale
    sender.scale = 1
  }
}

