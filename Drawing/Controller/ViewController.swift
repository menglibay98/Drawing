//
//  ViewController.swift
//  Drawing
//
//  Created by Ислам on 1/5/19.
//  Copyright © 2019 Ислам. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let canvas = Canvas()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        view.addSubview(canvas)
        canvas.backgroundColor = UIColor.white
        canvas.frame = view.frame
    }


}

