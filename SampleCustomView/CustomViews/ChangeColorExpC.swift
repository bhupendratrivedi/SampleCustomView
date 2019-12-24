//
//  ChangeColorExpC.swift
//  SampleCustomView
//
//  Created by Bhupendra Trivedi on 22/12/19.
//  Copyright © 2019 Bhupendra Trivedi. All rights reserved.
//

import UIKit

class ChangeColorExpC: UIView {
    
    @IBOutlet var changeColorButtonInCustomView: UIButton!
    
    @IBAction func changeColorButtonTappedInCustomView(_ sender: Any) {
        let colors: [UIColor] = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.orange, UIColor.black, UIColor.purple, UIColor.blue]
        let randomColorIndex = arc4random() % 6
        self.backgroundColor = colors[Int(randomColorIndex)]
    }
}
