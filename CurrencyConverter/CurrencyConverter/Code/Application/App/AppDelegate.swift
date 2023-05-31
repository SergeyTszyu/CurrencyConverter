//
//  AppDelegate.swift
//  CurrencyConverter
//
//  Created by Sergey Tszyu on 31.05.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window:UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
                window?.rootViewController = UIStoryboard(name: "Exchange", bundle: nil).instantiateInitialViewController()
                window?.makeKeyAndVisible()
        
        return true
    }

}

