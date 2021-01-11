//
//  BaseController.swift
//  The Court Lawyer
//
//  Created by Ahmed Shahid on 5/3/18.
//  Copyright © 2018 Ahmed Shahid. All rights reserved.
//

import Foundation
import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
  //      self.hideKeyboardWhenTappedAround()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.setNavigationBar()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
}
////MARK:- Helper Methods
//extension BaseController{
//    func setNavigationBar(){
//        let currentClassName = Utility.main.topViewController()?.className
//        guard let navControllerCount = self.navigationController?.viewControllers.count else {return}
//        if navControllerCount > 1 {
//            self.navigationController?.navigationBar.isHidden = false
//            self.addBackBarButtonItem()
//            return
//        }
//        else if AppStateManager.sharedInstance.isUserLoggedIn() && currentClassName == Home().className {
//            self.navigationController?.navigationBar.isHidden = false
//            return
//        }
//        else{
//            self.navigationController?.navigationBar.isHidden = true
//        }
//        self.resetNavigationBar()
//    }
//    func resetNavigationBar(){
//        self.navigationController?.navigationBar.barTintColor = Global.APP_COLOR
//        self.navigationController?.navigationBar.tintColor = UIColor.black
//    }
//}
////MARK:- Navigation items
//extension BaseController{
//    private func addBackBarButtonItem() {
//        let image = UIImage(named: "BackButton")
//        let backItem = UIBarButtonItem(image: image,
//                                       style: .plain,
//                                       target: self,
//                                       action: #selector(self.onBtnBack))
//
//        self.navigationItem.leftBarButtonItem = backItem
//    }
//    public func addHomeBarButtonItem() {
//        let image = UIImage(named: "HomeNavBarIcon")?.withRenderingMode(.alwaysOriginal)
//        let backItem = UIBarButtonItem(image: image,
//                                       style: .plain,
//                                       target: self,
//                                       action: #selector(self.onBtnHome))
//
//        self.navigationItem.rightBarButtonItem = backItem
//    }
//    public func addHomeFilterBarButtonItem() {
//        let image = UIImage(named: "FilterRed")?.withRenderingMode(.alwaysOriginal)
//        let backItem = UIBarButtonItem(image: image,
//                                       style: .plain,
//                                       target: self,
//                                       action: #selector(self.onBtnHomeFilter))
//
//        self.navigationItem.rightBarButtonItem = backItem
//    }
//    public func addAddBarButtonItem() {
//        let image = UIImage(named: "AddIcon")?.withRenderingMode(.alwaysOriginal)
//        let backItem = UIBarButtonItem(image: image,
//                                       style: .plain,
//                                       target: self,
//                                       action: #selector(self.onBtnAdd))
//
//        self.navigationItem.rightBarButtonItem = backItem
//    }
//}
////MARK:- @objc Methods
//extension BaseController{
//    @objc func onBtnBack() {
//        self.navigationController?.popViewController(animated: true)
//    }
//    @objc func onBtnHome() {
//        SceneDelegate.shared.changeRootViewController(false)
//    }
//    @objc func onBtnHomeFilter() {}
//    @objc func onBtnAdd() {}
//}
////MARK:- Application flow
//extension BaseController{
//    func pushToVerifiyAccount(){
//        let storyboard = AppStoryboard.Login.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "VerifyAccount") as? VerifyAccount else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func presentConfirmationAlert(){
//        let storyboard = AppStoryboard.Login.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "ConfirmationAlert") as? ConfirmationAlert else {return}
//        Utility.main.topViewController()?.present(controller, animated: true, completion: nil)
//    }
//    func pushToMessages(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "Messages") as? Messages else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func pushToChatRider(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "ChatRider") as? ChatRider else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func presentFilterAttributes(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "FilterAttributes") as? FilterAttributes else {return}
//        Utility.main.topViewController()?.present(controller, animated: true, completion: nil)
//    }
//    func pushToMenuItemList(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "MenuItemList") as? MenuItemList else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func presentBottomBar(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "BottomBar") as? BottomBar else {return}
//        Utility.main.topViewController()?.present(controller, animated: true, completion: nil)
//    }
//    func presentNewMenuPopUp(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "NewMenuPopUp") as? NewMenuPopUp else {return}
//        Utility.main.topViewController()?.present(controller, animated: true, completion: nil)
//    }
//    func pushToMenuName(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "MenuName") as? MenuName else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func pushToMenuDetail(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "MenuDetail") as? MenuDetail else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func presentImagePicker(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "ImagePicker") as? ImagePicker else {return}
//        Utility.main.topViewController()?.present(controller, animated: true, completion: nil)
//    }
//    func pushAmount(){
//           let storyboard = AppStoryboard.Home.instance
//           guard let controller = storyboard.instantiateViewController(identifier: "MenuAmount") as? MenuAmount else {return}
//           Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//       }
//    func pushFinalAmount(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "MenuFinalAmount") as? MenuFinalAmount else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//    func pushCreateMenu(){
//        let storyboard = AppStoryboard.Home.instance
//        guard let controller = storyboard.instantiateViewController(identifier: "CreateMenu") as? CreateMenu else {return}
//        Utility.main.topViewController()?.navigationController?.pushViewController(controller, animated: true)
//    }
//}
