//
//  AppExtension.swift
//  Rest_APIManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation
import UIKit

extension UIViewController {
    
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func getTopViewController() -> UIViewController {
        
        if let tabbarVC = self as? UITabBarController, let selectedVC = tabbarVC.selectedViewController {
            return selectedVC.getTopViewController()
        }
        
        if let navVC = self as? UINavigationController, let visibleVC = navVC.visibleViewController {
            return visibleVC.getTopViewController()
        }
        
        if let presentedViewController = presentedViewController {
            return presentedViewController.getTopViewController()
        }
        
        return self
        
    }
    
    func show() {
        let win = UIWindow(frame: UIScreen.main.bounds)
        let vc = UIViewController()
        vc.view.backgroundColor = .clear
        win.rootViewController = vc
        win.windowLevel = UIWindow.Level.alert + 1
        win.makeKeyAndVisible()
        vc.present(self, animated: true, completion: nil)
    }
}
