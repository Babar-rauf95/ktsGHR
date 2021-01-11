//
//  AppDelegate.swift
//  HOA
//
//  Created by macbook on 27/09/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit
import LGSideMenuController
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    static let shared: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSPlacesClient.provideAPIKey(Constants.apiKey)
//        self.changeRootViewController()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        //        switch UIApplication.shared.applicationState {
        //        case .active:
        //            print("active")
        //        case .background:
        //            print("background")
        //            print("Background time remaining = " +
        //                "\(UIApplication.shared.backgroundTimeRemaining) seconds")
        //        case .inactive:
        //            print("inactive")
        //            break
        //        @unknown default:
        //            fatalError()
        //        }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}

extension AppDelegate{
    func changeRootViewController(){
        if !AppStateManager.sharedInstance.isUserLoggedIn(){
            self.showLogin()
        }
        else{
            self.showHome()
        }
    }
    private func showLogin(){
        let storyboard = AppStoryboard.Login.instance
        let navigationController = BaseNavigationController(rootViewController: storyboard.instantiateViewController(withIdentifier: "Login"))
        navigationController.navigationBar.isHidden = true
        UIView.transition(with: self.window!, duration: 0.5, options: .transitionFlipFromLeft, animations: {
            self.window?.rootViewController = navigationController
        }, completion: nil)
    }
    private func showHome(){
        let storyboard = AppStoryboard.Home.instance
        let leftMenuController = storyboard.instantiateViewController(withIdentifier: "SideMenu")
        let controller = storyboard.instantiateViewController(withIdentifier: "Home")
        let navController = UINavigationController(rootViewController: controller)
        navController.navigationBar.isHidden = true
        let sideMenuController = LGSideMenuController(rootViewController: navController,
                                                      leftViewController: leftMenuController,
                                                      rightViewController: nil)
        if let window = self.window {
            window.rootViewController = nil
            UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                sideMenuController.leftViewWidth = window.frame.width * 0.75
                window.rootViewController = sideMenuController
            }, completion: nil)
        }
    }

}
