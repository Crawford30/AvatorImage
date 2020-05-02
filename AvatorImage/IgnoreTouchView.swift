//
//  IgnoreTouchView.swift
//  AvatorImage
//
//  Created by JOEL CRAWFORD on 5/2/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class IgnoreTouchView : UIView {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitView = super.hitTest(point, with: event)
        if hitView == self {
            return nil
        }
        return hitView
    }
}
