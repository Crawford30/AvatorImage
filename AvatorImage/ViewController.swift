//
//  ViewController.swift
//  AvatorImage
//
//  Created by JOEL CRAWFORD on 4/28/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let avatorImageWidth: CGFloat = 80.0
    
    let avatorImageHeight: CGFloat = 80.0
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var upperLabel: UILabel!
    
  
    @IBOutlet weak var downLabel: UILabel!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    
    @IBOutlet weak var rightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        setCropFrame()
       
    }
    
    
    
    
    
    
    
    
    
    
    func setCropFrame() {
        
        scrollView.addSubview(imageView)
    
        upperLabel.alpha = 0.4
       
        downLabel.alpha = 0.4
     
      
    
        
    
        self.leftLabel.transform = CGAffineTransform(rotationAngle: .pi * 1/2)
           leftLabel.alpha = 0.4
        
        // drawerView.frame = CGRect( x: 0.0 - self.drawerView.frame.size.width, y: 89,  width: self.drawerView.frame.size.width, height: self.drawerView.frame.size.height )
        
       // leftLabel.frame = CGRect(x: 0.0, y: 0.0, (width:UIScreen.main.bounds.width - self.imageView.frame.size.width) / 2, height: avatorHeight)
        
    
        leftLabel.frame = CGRect(x: 0, y: upperLabel.frame.size.height, width: (UIScreen.main.bounds.width -  avatorImageWidth )/2, height: UIScreen.main.bounds.height - (upperLabel.frame.size.height + downLabel.frame.size.height))
        
        
        let rightX: CGFloat = leftLabel.frame.size.width + avatorImageWidth
        
        rightLabel.frame = CGRect(x: rightX, y: upperLabel.frame.size.height, width:(UIScreen.main.bounds.width -  avatorImageWidth )/2 , height:  UIScreen.main.bounds.height - (upperLabel.frame.size.height + downLabel.frame.size.height))
        
        
               
               
        
               
      //  self.rightLabel.transform = CGAffineTransform(rotationAngle: .pi * 1/2)
        //  rightLabel.alpha = 0.4
    }



}






