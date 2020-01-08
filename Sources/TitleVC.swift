//
//  ViewController.swift
//  Enquete
//
//  Created by JECMM on 2017/08/29.
//  Copyright © 2017年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit
import FlatUIKit
import BAFluidView

class TitleVC: UIViewController {

  var animeView:BAFluidView!
  var anime2View:BAFluidView!
  var anime3View:BAFluidView!
  
  @IBOutlet weak var touchPleaseImage: UIImageView!

  @IBOutlet weak var circleImage: UIImageView!
  @IBOutlet weak var circleImage2: UIImageView!
  @IBOutlet weak var circleImage3: UIImageView!
  
  // ステータスバーの非表示
  override var prefersStatusBarHidden: Bool { return true }
  
/* ビュー読み込み時の処理 ==================================================================*/
  override func viewDidLoad() {
    super.viewDidLoad()
        self.view.isUserInteractionEnabled = true
  }
  
/*  画面表示前の処理 ==================================================================*/
  override func viewWillAppear(_ animated: Bool) {
    // ロゴアニメーション
    UIView.animate(withDuration: 2.1,
        delay: 0.5,
        options:  UIViewAnimationOptions.repeat,
        animations: {
            self.touchPleaseImage.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
            self.touchPleaseImage.alpha = 0.0
            
    }, completion: nil)
    view.addSubview(touchPleaseImage)
    
    
    // ++++++++++++++++++++++++++++++++++++++++++++
    // 波のアニメーション
    //アニメーションのViewを生成（startElevationで開始位置を設定）
    animeView = BAFluidView(frame: self.view.frame,startElevation: 0.342)
    anime2View = BAFluidView(frame: self.view.frame,startElevation: 0.34)
    anime3View = BAFluidView(frame: self.view.frame,startElevation: 0.338)
    
    //波の高さを開始位置と同じにする
    animeView?.fill(to: 0.3)
    anime2View?.fill(to: 0.299)
    anime3View?.fill(to: 0.295)
    
    //波の境界線の色
    animeView?.strokeColor = UIColor(red: 0.116, green: 0.153, blue: 0.196, alpha: 1.0)
    anime2View?.strokeColor = .white
    anime3View.strokeColor = .black

    
    //波の色
    // KawasakiColor
    animeView?.fillColor = UIColor(red: 0.16, green: 0.653, blue: 0.596, alpha: 0.9)
    // UbeatKnitカラー
    // UIColor(red: 1.0, green: 0.9, blue: 0.2, alpha: 1.0)
    
    anime2View?.fillColor = .clear
    anime3View?.fillColor = .clear
    
    animeView.isUserInteractionEnabled = false
    anime2View.isUserInteractionEnabled = false
    anime3View.isUserInteractionEnabled = false
    
    self.view.addSubview(animeView!)
    self.view.addSubview(anime2View!)
    self.view.addSubview(anime3View!)


    // ++++++++++++++++++++++++++++++++++++++++++++
  }
  
/* 画面タッチ時に呼び出される処理 ==================================================================*/
  var tapLocation: CGPoint = CGPoint()
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    touchPleaseImage.stopAnimating()
    
    // タッチイベントを取得する
    let touch = touches.first
    
    // タップした座標を取得する
    tapLocation = touch!.location(in: self.view)
    
    if circleImage.tag == 0{
      circleImage.tag = 1
      
      circleImage.center = tapLocation
      circleImage2.center = tapLocation
      circleImage3.center = tapLocation
      circleImage.alpha = 1
      circleImage2.alpha = 1
      circleImage3.alpha = 1
    
      self.touchPleaseImage.stopAnimating()
      // 0.5秒
      UIView.animate(withDuration: 0.5,
        delay: 0.0,
        options:  UIViewAnimationOptions.curveEaseInOut,
        animations: {
          self.circleImage.bounds = CGRect(x: 0, y: 0, width: 650, height: 650)
          self.circleImage.alpha = 0.0
      },  completion: nil)
    
      // 0.8秒
      UIView.animate(withDuration: 0.8,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.circleImage2.bounds = CGRect(x: 0, y: 0, width: 580, height: 580)
                    self.circleImage2.alpha = 0.0
      },  completion: nil)
    
      // 1.0秒
      UIView.animate(withDuration: 1.0,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.circleImage3.bounds = CGRect(x: 0, y: 0, width: 500, height: 500)
                    self.circleImage3.alpha = 0.0
                    self.touchPleaseImage.alpha = 0
      },  completion: nil)
    }
    
    // 0.8秒後にセグエを呼び出し
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
      self.performSegue(withIdentifier: "goNext", sender: nil)
    })
  }
 
}

