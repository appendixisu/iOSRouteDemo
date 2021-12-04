//
//  ViewController.swift
//  iOSRouteDemo
//
//  Created by Andy on 2021/12/3.
//

import UIKit

class WellcomeViewController: UIViewController {
    
    @IBOutlet weak var jumpSecVCButton: UIButton!
    @IBOutlet weak var jumpNavigationVCButton: UIButton!
    @IBOutlet weak var jumpTabBarVCButton: UIButton!
    @IBOutlet weak var jumpSubStoryButton: UIButton!
    
    @IBAction func jumpToSecViewContollerAction(_ sender: UIButton) {
//        let identifier = "SecViewController"
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: identifier)
//        guard let vc = vc as? SecViewController else { return }
//        vc.iamadata = "我是從上一頁傳過去的資料"
//        self.present(vc, animated: true, completion: nil)
        
        // Second way
        let vc = SecViewController.instantiateFromStoryboard()
        
        vc.modalPresentationStyle = .formSheet
//        vc.view.alpha = 0.5
        vc.iamadata = "我是從上一頁傳過去的資料"
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func jumpToNavigationContollerAction(_ sender: UIButton) {
        let vc = MainNavigationController.instantiateFromStoryboard()
        self.present(vc, animated: true, completion: nil)
    }

    @IBAction func jumpToTabContollerAction(_ sender: UIButton) {
        let vc = MainTabBarController.instantiateFromStoryboard()
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func jumpToSubStoryboradAction(_ sender: UIButton) {
        let vc = MainTabBarController.instantiateFromStoryboard()
        self.present(vc, animated: true, completion: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

