//
//  NavigationFirstViewController.swift
//  iOSRouteDemo
//
//  Created by Andy on 2021/12/3.
//

import UIKit

class NavigationFirstViewController: UIViewController {
    
    @IBAction func dismissViewController(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pushSecAction(_ sender: UIButton) {
        let vc = NavigationSecViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
