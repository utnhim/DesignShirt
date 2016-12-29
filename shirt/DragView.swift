//
//  DragView.swift
//  shirt
//
//  Created by UtNhim on 12/6/16.
//  Copyright © 2016 UtNhim. All rights reserved.
//

import UIKit

class DragView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touch began")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let point = touch.location(in: self.superview)
            if(point.y > (self.superview?.frame.origin.y)!-200 && point.y < (self.superview?.frame.origin.y)!+100){
            let location = CGPoint(x: point.x, y: point.y)
            self.center = location
            }
        }
    }

}
