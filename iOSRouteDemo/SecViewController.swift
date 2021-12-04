//
//  SecViewController.swift
//  iOSRouteDemo
//
//  Created by Andy on 2021/12/3.
//

import UIKit

class SecViewController: UIViewController {
    
    var iamadata: String = ""
    
    @IBOutlet weak var myCenterLabel: UILabel!
    
    @IBAction func dismissViewControllerAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myCenterLabel.text = (myCenterLabel.text ?? "") + "\n" + iamadata
    }
    
}
