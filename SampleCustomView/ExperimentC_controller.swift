//
//  ExperimentC_controller.swift
//  SampleCustomView
//
//  Created by Bhupendra Trivedi on 22/12/19.
//  Copyright © 2019 Bhupendra Trivedi. All rights reserved.
//

import UIKit

class ExperimentC_controller: UIViewController {
    
    @IBOutlet var changeColorButtonInParent: UIButton!
    
    @IBAction func changeColorButtonTappedInParent(_ sender: Any) {
        print("Exp C: Action Called Inside Parent too")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addChangeColorView()
    }
    
    func addChangeColorView() {
         
        if let firstView = Bundle.main.loadNibNamed("ChangeColorExpC", owner: self, options: nil)?.first as? ChangeColorExpC {
             view.addSubview(firstView)
            firstView.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: firstView.frame.size.height)
             firstView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
             firstView.backgroundColor = UIColor.clear
             firstView.backgroundColor = UIColor.cyan
         }
     }
}
