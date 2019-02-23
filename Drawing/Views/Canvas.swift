//
//  Canvas.swift
//  Drawing
//
//  Created by Ислам on 1/5/19.
//  Copyright © 2019 Ислам. All rights reserved.
//

import UIKit

class Canvas: UIView {
    override func draw(_ rect: CGRect) {
        // custom drawing
        
        super.draw(rect)
        
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        
        //here are my lines
        // dummy data
        
        //        let startPoint = CGPoint(x: 0, y: 0)
        //        let endPoint = CGPoint(x: 100, y: 100)
        //
        //        context.move(to: startPoint)
        //        context.addLine(to: endPoint)
        
        context.setStrokeColor(UIColor.blue.cgColor)
        context.setLineWidth(10)
        context.setLineCap(.butt)
        
        lines.forEach { (line) in
            for (i,p) in line.enumerated() {
                if i == 0 {
                    context.move(to: p)
                    
                } else {
                    context.addLine(to: p)
                }
            }
        }
        
        
        
        
        context.strokePath()
        
        
        
}
}
