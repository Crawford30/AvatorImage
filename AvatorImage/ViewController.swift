//
//  ViewController.swift
//  AvatorImage
//
//  Created by JOEL CRAWFORD on 4/28/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let avatorWidth: CGFloat = 80.0
    
    let avatorHeight: CGFloat = 80.0
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var upperLabel: UILabel!
    
    @IBOutlet weak var downLabel: UIImageView!
    
    
    @IBOutlet weak var leftLabel: UILabel!
    
    
    @IBOutlet weak var rightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        setCropFrame()
       
    }
    
    
    
    
    
    
    
    
    
    
    func setCropFrame() {
        
        scrollView.addSubview(imageView)
    
    
        
    
        self.leftLabel.transform = CGAffineTransform(rotationAngle: .pi * 1/2)
               
               
        
               
        self.rightLabel.transform = CGAffineTransform(rotationAngle: .pi * 1/2)
        
    }



}






