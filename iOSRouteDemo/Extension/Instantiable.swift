//
//  Instantiable.swift
//  iOSRouteDemo
//
//  Created by andy on 2020/10/6.
//

import UIKit

protocol StringConvertible {
    var rawValue: String {get}
}

/// 讓ViewContoller快速由Storyboard實例化，並轉型為該物件。
protocol Instantiable {
    static var storyboardName: StringConvertible {get}
}

extension Instantiable {
    // 如果有多個Storyboard，必須在各自的ViewController裡，去定義storyboardName。
    // 以下要刪除
    /// UIViewController所在的Storyboard的名稱
    static var storyboardName: StringConvertible {
        return "Main"
    }
    
    /// Creates the view controller with the specified identifier and initializes it with the data from the storyboard.
    /// - Returns: The view controller corresponding to the specified identifier string of same the class name. If no view controller has the given identifier, this method throws an exception.
    static func instantiateFromStoryboard() -> Self {
        return instantiableFromStoryboardHelper()
    }
    
    /// 寫兩段是為了要讓自定義ViewController可以利用泛型轉型
    /// - Returns: 回傳泛型UIViewController
    private static func instantiableFromStoryboardHelper<T>() -> T {
        let identifier = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier)
        guard let vcc = vc as? T else { fatalError() }
        return vcc
    }
    
}

extension String: StringConvertible {
    var rawValue: String {
        return self
    }
}

// 預設將所有ViewController都套用Instantiable
extension UIViewController: Instantiable {

}
