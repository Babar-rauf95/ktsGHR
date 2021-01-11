
import Foundation
import UIKit

struct Global{
    static let LOGGED_IN_USER                = AppStateManager.sharedInstance.loggedInUser
    static var APP_MANAGER                   = AppStateManager.sharedInstance
    static var APP_REALM                     = APP_MANAGER.realm
    static let APP_COLOR                     = UIColor(red:188/255, green:0/255, blue:0/255, alpha:1.0)
    static let APP_COLOR_DARK_GREY           = UIColor(red:177/255, green:177/255, blue:177/255, alpha:1.0)
}

struct Constants {
    //MARK:- Base URL
    static let BaseURL                     = "https://uat.quickdeliveryslu.com/api/"
    static let SocketBaseURL               = "https://uat.quickdeliveryslu.com/"
    static let APP_DELEGATE                = UIApplication.shared.delegate as! AppDelegate
    static let UIWINDOW                    = UIApplication.shared.delegate!.window!
    static let USER_DEFAULTS               = UserDefaults.standard
    static let SINGLETON                   = Singleton.sharedInstance
    static let DEFAULTS_USER_KEY           = "User"
    static var DeviceToken                 = "No certificates"
    static let serverDateFormat            = "yyyy-MM-dd HH:mm:ss.SSS"//2020-08-19 19:48:21.000000
    static let PAGINATION_PAGE_SIZE        = 100
    static let VERIFY_CODE_TIME_LIMIT      = 5*60
    static var adminPhone                  = "123456"
    static let apiKey                      = "AIzaSyCJBDZYHuEOl08YzAOTkOPfq0TQ3mO0MgA"
    static var accessToken                 = ""
    static var GoogleSignInClientID        = "821622832147-00elb5glohhc0njcl57bksf4b9kftomc.apps.googleusercontent.com"
    static var BugseeToken                 = "5e97ab5a-d533-443d-be90-5d4fea92b66e"
    static var iTunesURL                   = "http://itunes.apple.com/us/lookup?bundleId="
    static var currency                    = "$"
    static let oneSignalAppID              = "4ac1ff96-ec01-4a69-8abc-414b5884d79f"
    static let gmailSignInClientID         = "857012175771-er4drafle21fh2eh6mn37saode9299jv.apps.googleusercontent.com"
    
}
