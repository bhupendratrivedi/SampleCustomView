//
//  ExperimentB_controller.swift
//  SampleCustomView
//
//  Created by Bhupendra Trivedi on 19/12/19.
//  Copyright © 2019 Bhupendra Trivedi. All rights reserved.
//

import UIKit

class ExperimentB_controller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChangeColorView()
    }
    
    func addChangeColorView() {
        if let firstView = Bundle.main.loadNibNamed("ChangeColorVarB", owner: self, options: nil)?.first as? UIView {
            view.addSubview(firstView)
            firstView.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: firstView.frame.size.height)
            firstView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            firstView.backgroundColor = UIColor.cyan
        }
    }
}
