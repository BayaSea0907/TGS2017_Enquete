//
//  ThankYouVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/03.
//  Copyright © 平成29年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit
import SpriteKit

class ThankYouVC: UIViewController {
  
    // デリゲートアクセス用
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
    // ステータスバーの非表示
    override var prefersStatusBarHidden: Bool { return true }
  
    // タイム取得
    let todayInfo = TodayInfo()
    
    var skView: SKView?
    var timer:Timer = Timer()
  
/* ビュー読み込み時の処理 ==================================================================*/
    override func viewDidLoad() {
      super.viewDidLoad()

      // SKView作成
      createSKView()
        
      // Sceneを追加
      setupParticle()
      
      // マルチタッチを適用
      self.view.isUserInteractionEnabled = true
      
      // 日付　
      let today = todayInfo.GetToday()
      var temp:Int!
    }
  
/* 画面表示後の処理 ==================================================================*/
    override func viewWillAppear(_ animated: Bool) {
      let fileOperator = FileOperator()
    
  
/* データの記録とリセット ==================================================================*/
      
         // 末尾に, ついてます
      var exportInfo = todayInfo.GetTodayHourMinute()   // hour, minute
        
        // 全体データ書き出し
      var enqueteData:String = appDelegate.myUserInfo.GetEnqueteData()
      fileOperator.FileExport(data: exportInfo + enqueteData)
      
      
      // q2データ書き出し
      let nameArray = ["AimRacing9", "Synesthesia", "BBLive", "Cubic", "Scrapper", "CM"]
      let contentsData:[String] = appDelegate.myUserInfo.GetContentsData()
      for i:Int in 0..<6{
        if appDelegate.myUserInfo.q3_2[i] != "" {
          fileOperator.FileExport(data: exportInfo + contentsData[i], contentsName: nameArray[i])
        }
      }
      
        // 42インチ表示用 書き出し
        let today = todayInfo.GetToday()
        let hour = todayInfo.GetHour()
        var fileName = ""
        
        var temp = appDelegate.myUserInfo.GetFeelingData()
        
        fileOperator.FileExport(data: temp, hour: hour)
        
      
      //5秒たったらタイトル画面へ
      DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: {
        self.performSegue(withIdentifier: "goTitle", sender: nil)
      })
    }
  
/* 画面非表示後の処理 ==================================================================*/
    override func viewDidDisappear(_ animated: Bool) {
      // 入力情報をリセット
      appDelegate.myUserInfo.reset()
    }
  
  
/* パーティクル系の何か ==================================================================*/
    func createSKView() {
        self.skView = SKView(frame: self.view.frame)
        self.skView!.allowsTransparency = true
    }
    
    func setupParticle() {
        let scene = SKScene(size: self.view.frame.size)
        scene.backgroundColor = UIColor.clear
        
        let path = Bundle.main.path(forResource: "MyParticle", ofType: "sks")
        let particle = NSKeyedUnarchiver.unarchiveObject(withFile: path!) as! SKEmitterNode
        particle.name = "MyParticle"
        particle.position = CGPoint(x:self.view.frame.width / 2, y:self.view.frame.height)
        scene.addChild(particle)
        
        self.skView!.presentScene(scene)
        self.view.addSubview(self.skView!)
        particle.isUserInteractionEnabled = true
    }
    
    
}
