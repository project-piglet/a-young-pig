//
//  AppDelegate.swift
//  ProjectPiglet
//
//  Created by Samuel Markoe on 7/25/17.
//

import Foundation
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var bridge: RCTBridge?
  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

    let jsCodeLocation: URL = RCTBundleURLProvider
      .sharedSettings()
      .jsBundleURL(forBundleRoot: "build/index", fallbackResource: nil)

    let rootView: RCTRootView = RCTRootView(bundleURL: jsCodeLocation,
                                            moduleName: "ProjectPiglet",
                                            initialProperties: nil,
                                            launchOptions: launchOptions)

    let rootViewController: UIViewController = UIViewController()
    rootViewController.view = rootView

    self.bridge = rootView.bridge

    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()

    return true
  }
}
