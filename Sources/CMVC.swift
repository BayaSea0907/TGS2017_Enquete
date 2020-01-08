//
//  CMVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/03.
//  Copyright © 平成29年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit

class CMVC: UIViewController {
  
  let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
  // ステータスバーの非表示
  override var prefersStatusBarHidden: Bool { return true }
  
  @IBOutlet weak var jpn: UIButton!
  @IBOutlet weak var eng: UIButton!
  
  // q3_1
  @IBOutlet weak var q3_1: UILabel!
  @IBOutlet weak var q3_1_1: UILabel!
  @IBOutlet weak var q3_1_2: UILabel!
  @IBOutlet weak var q3_1_3: UILabel!
  @IBOutlet weak var q3_1_4: UILabel!
  @IBOutlet weak var q3_1_5: UILabel!
  @IBOutlet weak var q3_1_6: UILabel!
  @IBOutlet weak var q3_1_7: UILabel!
  
  @IBOutlet weak var q3_1_1Button: UIButton!
  @IBOutlet weak var q3_1_2Button: UIButton!
  @IBOutlet weak var q3_1_3Button: UIButton!
  @IBOutlet weak var q3_1_4Button: UIButton!
  @IBOutlet weak var q3_1_5Button: UIButton!
  @IBOutlet weak var q3_1_6Button: UIButton!
  @IBOutlet weak var q3_1_7Button: UIButton!
  
  @IBOutlet weak var q3_1_1Sub: UIButton!
  @IBOutlet weak var q3_1_2Sub: UIButton!
  @IBOutlet weak var q3_1_3Sub: UIButton!
  @IBOutlet weak var q3_1_4Sub: UIButton!
  @IBOutlet weak var q3_1_5Sub: UIButton!
  @IBOutlet weak var q3_1_6Sub: UIButton!
  @IBOutlet weak var q3_1_7Sub: UIButton!
  
  let imageTrue:UIImage = UIImage(named:"checkBox2_t.png")!
  let imageFalse:UIImage = UIImage(named:"checkBox1_f.png")!
  
  @IBOutlet weak var q3_2: UILabel!
  @IBOutlet weak var TextView: UITextView!
  
  @IBOutlet weak var q3_3: UILabel!
  @IBOutlet weak var q3_3_bar: UISlider!
  @IBOutlet weak var FeelingValueLabel: UILabel!
  @IBOutlet weak var minLabel: UILabel!
  @IBOutlet weak var maxLabel: UILabel!
  
  @IBOutlet weak var cmNext: UIButton!
  @IBOutlet weak var nextButtonImage: UIImageView!
  
  let japaneseTrue:UIImage = UIImage(named:"jpn_t.png")!
  let japaneseFalse:UIImage = UIImage(named:"jpn_f.png")!
  let englishTrue:UIImage = UIImage(named:"eng_t.png")!
  let englishFalse:UIImage = UIImage(named:"eng_f.png")!
  
  /* ビュー読み込み時の処理 ==================================================================*/
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if(currentLanguage == "ja"){
      jpn.setImage(japaneseTrue, for: UIControlState())
      eng.setImage(englishFalse, for: UIControlState())
      cmLabel()
    }
    else{
      jpn.setImage(japaneseFalse, for: UIControlState())
      eng.setImage(englishTrue, for: UIControlState())
      cmLabel()
    }
 
    
  }
  
  /* 画面表示前の処理 ==================================================================*/
  override func viewDidAppear(_ animated: Bool) {
    UIView.animate(withDuration: 2.0,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.repeat,
                   animations: {
                    self.nextButtonImage.bounds = CGRect(x: 0, y: 0, width: 150, height: 75)
                    self.nextButtonImage.alpha = 0.0
    }, completion: nil)
  }
  
  /* 言語切替 ==================================================================*/
  @IBAction func changeJapanese(_ sender: Any) {
    currentLanguage = "ja"
    
    jpn.setImage(japaneseTrue, for: UIControlState())
    eng.setImage(englishFalse, for: UIControlState())
    
   cmLabel()
  }
  @IBAction func changeEnglish(_ sender: Any) {
   currentLanguage =  "Base"
    
    eng.setImage(englishTrue, for: UIControlState())
    jpn.setImage(japaneseFalse, for: UIControlState())
    
    cmLabel()
  }
  
  /* Q3_1 ==================================================================*/
  
  // q3_1_1
  @IBAction func q3_1_1(_ sender: UIButton)
  {
    if q3_1_1Button.tag == 0 {
      q3_1_1Button.tag = 1
      q3_1_1Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_1Button.tag = 0
      q3_1_1Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  // q3_1_2
  @IBAction func q3_1_2(_ sender: UIButton)
  {
    if q3_1_2Button.tag == 0 {
      q3_1_2Button.tag = 1
      q3_1_2Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_2Button.tag = 0
      q3_1_2Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  // q3_1_3
  @IBAction func q3_1_3(_ sender: UIButton)
  {
    if q3_1_3Button.tag == 0 {
      q3_1_3Button.tag = 1
      q3_1_3Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_3Button.tag = 0
      q3_1_3Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  // q3_1_4
  @IBAction func q3_1_4(_ sender: UIButton)
  {
    if q3_1_4Button.tag == 0 {
      q3_1_4Button.tag = 1
      q3_1_4Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_4Button.tag = 0
      q3_1_4Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  // q3_1_5
  @IBAction func q3_1_5(_ sender: UIButton)
  {
    if q3_1_5Button.tag == 0 {
      q3_1_5Button.tag = 1
      q3_1_5Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_5Button.tag = 0
      q3_1_5Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  // q3_1_6
  @IBAction func q3_1_6(_ sender: UIButton)
  {
    if q3_1_6Button.tag == 0 {
      q3_1_6Button.tag = 1
      q3_1_6Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_6Button.tag = 0
      q3_1_6Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  // q3_1_7
  @IBAction func q3_1_7(_ sender: UIButton)
  {
    if q3_1_7Button.tag == 0 {
      q3_1_7Button.tag = 1
      q3_1_7Button.setImage(imageTrue, for: UIControlState())
    } else{
      q3_1_7Button.tag = 0
      q3_1_7Button.setImage(imageFalse, for: UIControlState())
    }
  }
  
  /* Q3_2 ==================================================================*/
  
  /* Q3_3 ==================================================================*/
  var tempCenter:CGFloat = 50.0
  
  @IBAction func SliderAction(_ sender: UISlider) {
    sender.tag = 1
    
    // 位置計算
    FeelingValueLabel.center.x -= (tempCenter - CGFloat(sender.value)) * 4.95
    tempCenter = CGFloat(sender.value)
    FeelingValueLabel.text = "\(Int(sender.value)) %"
  }
  
  /* 次へボタン ==================================================================*/
  @IBAction func cmNextTapped(_ sender: Any) {
    
    var m_q3_1:[Int] = [0,0,0,0,0,0,0]
    
    // 入力情報を送る
    if q3_1_1Button.tag == 1 { m_q3_1[0] = 1 }
    if q3_1_2Button.tag == 1 { m_q3_1[1] = 1 }
    if q3_1_3Button.tag == 1 { m_q3_1[2] = 1 }
    if q3_1_4Button.tag == 1 { m_q3_1[3] = 1 }
    if q3_1_5Button.tag == 1 { m_q3_1[4] = 1 }
    if q3_1_6Button.tag == 1 { m_q3_1[5] = 1 }
    if q3_1_7Button.tag == 1 { m_q3_1[6] = 1 }
    
    appDelegate.myUserInfo.q3_1[5] = m_q3_1
    appDelegate.myUserInfo.q3_2[5] = TextView.text!
    appDelegate.myUserInfo.q3_3[5] = Int(q3_3_bar.value)

    performSegue(withIdentifier: "goNext", sender: nil)
  }
  
  @IBAction func cmBackTapped(_ sender: UIButton) {
    self.dismiss(animated:true, completion: nil)
  }

/* ローカライズ ==================================================================*/
  func cmLabel()
  {
    q3_1.text = "Lix-Lo-80S.text".localized(lang: currentLanguage)
    
    q3_1_1.text = "a6v-KZ-ph2.text".localized(lang: currentLanguage)
    q3_1_2.text = "2tO-Bj-BUD.text".localized(lang: currentLanguage)
    q3_1_3.text = "g32-HV-XpT.text".localized(lang: currentLanguage)
    q3_1_4.text = "gV5-Z9-CdF.text".localized(lang: currentLanguage)
    q3_1_5.text = "nU8-Ir-e9q.text".localized(lang: currentLanguage)
    q3_1_6.text = "66U-A5-TN1.text".localized(lang: currentLanguage)
    q3_1_7.text = "NZ9-nK-OIL.text".localized(lang: currentLanguage)
    
    q3_2.text = "wgU-5w-BO4.text".localized(lang: currentLanguage)
    
    q3_3.text = "wcP-2y-9zw.text".localized(lang: currentLanguage)
    
    //minLabel.text = "6yt-cg-ra6.text".localized(lang: currentLanguage)
    //maxLabel.text = "2dr-sG-neR.text".localized(lang: currentLanguage)
  }
  
  /* タッチアニメーション ==================================================================*/
  // ------------------------------------------
  // 共通
  // スケール1.3倍
  @IBAction func buttonDownAnim(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    sender.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
    }, completion: nil)
  }
  
  // ボタンを離し時のエフェクト
  @IBAction func buttonDragExitAnim(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    sender.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_1
  @IBAction func q3_1_1Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_1Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_1Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_1Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_2
  @IBAction func q3_1_2Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_2Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_2Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_2Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_3
  @IBAction func q3_1_3Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_3Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_3Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_3Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_4
  @IBAction func q3_1_4Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_4Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_4Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_4Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_5
  @IBAction func q3_1_5Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_5Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_5Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_5Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_6
  @IBAction func q3_1_6Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_6Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_6Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_6Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // -------------------------------------------
  // q3_1_7
  @IBAction func q3_1_7Down(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_7Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q3_1_7Exit(_ sender: UIButton) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q3_1_7Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
}