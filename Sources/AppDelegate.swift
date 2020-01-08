//
//  AppDelegate.swift
//  Enquete
//
//  Created by JECMM on 2017/08/29.
//  Copyright © 2017年 JECMM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var myUserInfo = UserInfo()
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    return true
  }

  // アプリがアクティブでなくなる直前
  func applicationWillResignActive(_ application: UIApplication) {
  }

  // アプリがバックグラウンドになった際
  func applicationDidEnterBackground(_ application: UIApplication) {
  }

  // アプリがフォアグラウンドになった際
  func applicationWillEnterForeground(_ application: UIApplication) {
  }

  // ---------------------------------------
  // アプリがアクティブになった際
  // ---------------------------------------
  func applicationDidBecomeActive(_ application: UIApplication) {
    /*
    // ユーザー情報が残っている場合はリセットをかける
    if myUserDefaults.objectIsForced(forKey: "UserInfo") {
      // なければ
      myUserDefaults.set(myUserInfo, forKey: "UserInfo")
      
    }else{
      // あれば一度削除して初期化
      myUserDefaults.removeObject(forKey: "UserInfo")
      myUserDefaults.set(myUserInfo, forKey: "UserInfo")
    }
    */
  }

  // アプリが終了する際
  func applicationWillTerminate(_ application: UIApplication) {
  }


}

