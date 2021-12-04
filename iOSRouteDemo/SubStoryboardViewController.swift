//
//  SubStoryboardViewController.swift
//  iOSRouteDemo
//
//  Created by Andy on 2021/12/4.
//

import UIKit

class SubStoryboardViewController: UIViewController {
    
//    override static var storyboardName: StringConvertible {
//        return "Sub"
//    }
    
    @IBAction func dismissViewControllerAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
