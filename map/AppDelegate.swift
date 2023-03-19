//
//  AppDelegte .swift
//  map
//
//  Created by Shrouk Yasser on 19/03/2023.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // https://developers.google.com/maps/documentation/ios-sdk/get-api-key#add_key
        GMSServices.provideAPIKey("YOUR_API_KEY")
       return true
    }
}
