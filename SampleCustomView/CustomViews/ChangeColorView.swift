//
//  ChangeColorView.swift
//  SampleCustomView
//
//  Created by Bhupendra Trivedi on 19/12/19.
//  Copyright © 2019 Bhupendra Trivedi. All rights reserved.
//

import UIKit

class ChangeColorView: UIView {
    @IBOutlet var contentView: UIView!
    
    @IBOutlet var changeColorButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
    }
    
    private func customInit() {
        // Load XIB
        Bundle.main.loadNibNamed("ChangeColorView", owner: self, options: nil)
        // contentView intializes as soon as xib is loaded.
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.cyan
    }
    
    @IBAction func changeColorButtonTapped(_ sender: Any) {
        let colors: [UIColor] = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.orange, UIColor.black, UIColor.purple, UIColor.blue]
        let randomColorIndex = arc4random() % 6
        self.backgroundColor = colors[Int(randomColorIndex)]
    }
}
