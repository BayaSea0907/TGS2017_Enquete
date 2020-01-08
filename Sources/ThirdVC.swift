//
//  ThirdVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/03.
//  Copyright © 平成29年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit

class ThirdVC: UIViewController {

  let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
  // ステータスバーの非表示
  override var prefersStatusBarHidden: Bool { return true }
  
  // ----------------------------------------
  // Q4
  @IBOutlet weak var q4: UILabel!
  @IBOutlet weak var q4_1: UILabel!
  @IBOutlet weak var q4_2: UILabel!
  @IBOutlet weak var q4_3: UILabel!
  
  @IBOutlet weak var q4_1Button: UIButton!
  @IBOutlet weak var q4_2Button: UIButton!
  @IBOutlet weak var q4_3Button: UIButton!
  
  @IBOutlet weak var q4_1Sub: UIButton!
  @IBOutlet weak var q4_2Sub: UIButton!
  @IBOutlet weak var q4_3Sub: UIButton!
  
  // ----------------------------------------
  // Q5
  @IBOutlet weak var q5: UILabel!
  @IBOutlet weak var q5_1: UILabel!
  @IBOutlet weak var q5_2: UILabel!
  @IBOutlet weak var q5_3: UILabel!
  
  @IBOutlet weak var q5_1Button: UIButton!
  @IBOutlet weak var q5_2Button: UIButton!
  @IBOutlet weak var q5_3Button: UIButton!
  
  @IBOutlet weak var q5_1Sub: UIButton!
  @IBOutlet weak var q5_2Sub: UIButton!
  @IBOutlet weak var q5_3Sub: UIButton!
  
  // ----------------------------------------
  // Q6
  @IBOutlet weak var q6: UILabel!
  @IBOutlet weak var q6_1: UILabel!
  @IBOutlet weak var q6_2: UILabel!
  
  @IBOutlet weak var q6_1Button: UIButton!
  @IBOutlet weak var q6_2Button: UIButton!
  
  @IBOutlet weak var q6_1Sub: UIButton!
  @IBOutlet weak var q6_2Sub: UIButton!
  
  // ----------------------------------------
  // Q7
  @IBOutlet weak var q7: UILabel!
  
  @IBOutlet weak var q7_1Button: UIButton!
  @IBOutlet weak var q7_2Button: UIButton!
  @IBOutlet weak var q7_3Button: UIButton!
  @IBOutlet weak var q7_4Button: UIButton!
  @IBOutlet weak var q7_5Button: UIButton!
  @IBOutlet weak var q7_6Button: UIButton!
  @IBOutlet weak var q7_7Button: UIButton!
  
  @IBOutlet weak var q7_1Sub: UIButton!
  @IBOutlet weak var q7_2Sub: UIButton!
  @IBOutlet weak var q7_3Sub: UIButton!
  @IBOutlet weak var q7_4Sub: UIButton!
  @IBOutlet weak var q7_5Sub: UIButton!
  @IBOutlet weak var q7_6Sub: UIButton!
  @IBOutlet weak var q7_7Sub: UIButton!
  
  let imageTrue:UIImage = UIImage(named:"radio2_t.png")!
  let imageFalse:UIImage = UIImage(named:"radio1_f.png")!
  
  // 言語切替用
  @IBOutlet weak var jpn: UIButton!
  @IBOutlet weak var eng: UIButton!
    
  let japaneseTrue:UIImage = UIImage(named:"jpn_t.png")!
  let japaneseFalse:UIImage = UIImage(named:"jpn_f.png")!
  let englishTrue:UIImage = UIImage(named:"eng_t.png")!
  let englishFalse:UIImage = UIImage(named:"eng_f.png")!
  
  // 次へ
  @IBOutlet weak var thirdNext: UIButton!
  @IBOutlet weak var nextButtonImage: UIImageView!
  
  var m_q4:Int = 0
  var m_q5:Int = 0
  var m_q6:Int = 0
  var m_q7:Int = 0
  
/* ビュー読み込み時の処理 ==================================================================*/
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if(currentLanguage == "ja"){
      jpn.setImage(japaneseTrue, for: UIControlState())
      eng.setImage(englishFalse, for: UIControlState())
      thirdLabel()
    }
    else{
      jpn.setImage(japaneseFalse, for: UIControlState())
      eng.setImage(englishTrue, for: UIControlState())
     thirdLabel()

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
        
       thirdLabel()
    }
    
    @IBAction func changeEnglish(_ sender: Any) {
       currentLanguage = "Base"
        
        eng.setImage(englishTrue, for: UIControlState())
        jpn.setImage(japaneseFalse, for: UIControlState())
        
       thirdLabel()
    }

/* Q4 スタッフ対応 =============================================================================*/
    
    //RadioButton切替カウント
    var radioCount4_1 = 0
    var radioCount4_2 = 0
    var radioCount4_3 = 0
  
  
    // ----------------------------------------
    // Q4_1
    @IBAction func radioTapped4_1(_ sender: Any) {
        radioCount4_1 += 1
        
        if(radioCount4_1%2 == 0)
        {
            q4_1Button.setImage(imageFalse, for: UIControlState())
            m_q4 = 0
        }
        else
        {
            q4_1Button.setImage(imageTrue, for: UIControlState())
            q4_2Button.setImage(imageFalse, for: UIControlState())
            q4_3Button.setImage(imageFalse, for: UIControlState())
            
            radioCount4_2 = 0
            radioCount4_3 = 0
            m_q4 = 1
        }
    }
  
    // ----------------------------------------
    // Q4_2
    @IBAction func radioTapped4_2(_ sender: Any) {
        radioCount4_2 += 1
        
        if(radioCount4_2%2 == 0)
        {
            q4_2Button.setImage(imageFalse, for: UIControlState())
            m_q4 = 0
        }
        else
        {
            q4_2Button.setImage(imageTrue, for: UIControlState())
            q4_1Button.setImage(imageFalse, for: UIControlState())
            q4_3Button.setImage(imageFalse, for: UIControlState())
            
            radioCount4_1 = 0
            radioCount4_3 = 0
            m_q4 = 2
        }
    }
  
    // ----------------------------------------
    // Q4_3
    @IBAction func radioTapped4_3(_ sender: Any) {
        radioCount4_3 += 1
        
        if(radioCount4_3%2 == 0)
        {
            q4_3Button.setImage(imageFalse, for: UIControlState())
            m_q4 = 0
        }
        else
        {
            q4_3Button.setImage(imageTrue, for: UIControlState())
            q4_1Button.setImage(imageFalse, for: UIControlState())
            q4_2Button.setImage(imageFalse, for: UIControlState())
            
            radioCount4_1 = 0
            radioCount4_2 = 0
            m_q4 = 3
        }
    }
    
/* Q5 また来たいか =============================================================================*/
    
    //RadioButton切替カウント
    var radioCount5_1 = 0
    var radioCount5_2 = 0
    var radioCount5_3 = 0
  
    // ----------------------------------------
    // Q5_1
    @IBAction func radioTapped5_1(_ sender: Any) {
        radioCount5_1 += 1
        
        if(radioCount5_1%2 == 0)
        {
            q5_1Button.setImage(imageFalse, for: UIControlState())
            m_q5 = 0
        }
        else
        {
            q5_1Button.setImage(imageTrue, for: UIControlState())
            q5_2Button.setImage(imageFalse, for: UIControlState())
            q5_3Button.setImage(imageFalse, for: UIControlState())
            
            radioCount5_2 = 0
            radioCount5_3 = 0
            m_q5 = 1
        }
    }
  
    // ----------------------------------------
    // Q5_2
    @IBAction func radioTapped5_2(_ sender: Any) {
        radioCount5_2 += 1
        
        if(radioCount5_2%2 == 0)
        {
            q5_2Button.setImage(imageFalse, for: UIControlState())
            m_q5 = 0
        }
        else
        {
            q5_2Button.setImage(imageTrue, for: UIControlState())
            q5_1Button.setImage(imageFalse, for: UIControlState())
            q5_3Button.setImage(imageFalse, for: UIControlState())
            
            radioCount5_1 = 0
            radioCount5_3 = 0
            m_q5 = 2
        }
    }
  
    // ----------------------------------------
    // Q5_3
    @IBAction func radioTapped5_3(_ sender: Any) {
        radioCount5_3 += 1
        
        if(radioCount5_3%2 == 0)
        {
            q5_3Button.setImage(imageFalse, for: UIControlState())
            m_q5 = 0
        }
        else
        {
            q5_3Button.setImage(imageTrue, for: UIControlState())
            q5_1Button.setImage(imageFalse, for: UIControlState())
            q5_2Button.setImage(imageFalse, for: UIControlState())
            
            radioCount5_1 = 0
            radioCount5_2 = 0
            m_q5 = 3
        }
    }
    
/* Q6 性別 =============================================================================*/
    
    //RadioButton切替カウント
    var radioCount6_1 = 0
    var radioCount6_2 = 0
  
    // ----------------------------------------
    // Q6_1
    @IBAction func radioTapped6_1(_ sender: Any) {
        radioCount6_1 += 1
        
        if(radioCount6_1%2 == 0)
        {
            q6_1Button.setImage(imageFalse, for: UIControlState())
            m_q6 = 0
        }
        else
        {
            q6_1Button.setImage(imageTrue, for: UIControlState())
            q6_2Button.setImage(imageFalse, for: UIControlState())
            radioCount6_2 = 0
            m_q6 = 1
        }
    }
  
    // ----------------------------------------
    // Q6_2
    @IBAction func radioTapped6_2(_ sender: Any) {
        radioCount6_2 += 1
        
        if(radioCount6_2%2 == 0)
        {
            q6_2Button.setImage(imageFalse, for: UIControlState())
            m_q6 = 0
        }
        else
        {
            q6_2Button.setImage(imageTrue, for: UIControlState())
            q6_1Button.setImage(imageFalse, for: UIControlState())
            radioCount6_1 = 0
            m_q6 = 2
        }
    }
  
/* Q7 年齢 =============================================================================*/

  // ----------------------------------------
  // ~10
  @IBAction func radioTapped7_1(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 1)
      m_q7 = 1
    }
  }
  
  // ----------------------------------------
  //11~20
  @IBAction func radioTapped7_2(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 2)
      m_q7 = 2
    }
  }
  
  // ----------------------------------------
  // 21~30
  @IBAction func radioTapped7_3(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 3)
      m_q7 = 3
    }
  }
  
  // ----------------------------------------
  // 31~40
  @IBAction func radioTapped7_4(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 4)
      m_q7 = 4
    }
  }
  
  // ----------------------------------------
  // 41~50
  @IBAction func radioTapped7_5(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 5)
      m_q7 = 5
    }
  }
  
  // ----------------------------------------
  // 51~60
  @IBAction func radioTapped7_6(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 6)
      m_q7 = 6
    }
  }
  
  // ----------------------------------------
  // 61~
  @IBAction func radioTapped7_7(_ sender: UIButton) {
    if sender.tag == 1{
      sender.tag = 0
      q7ImageChange(buttonNum: 0)
      m_q7 = 0
    }
    else{
      sender.tag = 1
      q7ImageChange(buttonNum: 7)
      m_q7 = 7
    }
  }
  
  // q7画像切り換え用
  func q7ImageChange(buttonNum: Int){
    var q7Array = [q7_1Button, q7_2Button, q7_3Button, q7_4Button, q7_5Button, q7_6Button, q7_7Button]
    
    for i:Int in 0..<7{
      
      // 0なら全てのチェックを外す
      if buttonNum == 0 {
        q7Array[i]?.setImage(imageFalse, for: UIControlState())
      }
      // 該当するものにチェックをする
      else if i == buttonNum-1{
        q7Array[i]?.setImage(imageTrue, for: UIControlState())
      }
      // 知らない番号は全部外す
      else{
        q7Array[i]?.setImage(imageFalse, for: UIControlState())
      }
    }
  }

/* 次へボタン =============================================================================*/
  @IBAction func nextButtonTapped(_ sender: UIButton) {
    
    // データ集計
    appDelegate.myUserInfo.q4 = m_q4
    appDelegate.myUserInfo.q5 = m_q5
    appDelegate.myUserInfo.q6 = m_q6
    appDelegate.myUserInfo.q7 = m_q7
  }
  
  
/* 戻るボタン =============================================================================*/
  @IBAction func backTapped(_ sender: UIButton) {
    self.dismiss(animated:true, completion: nil)
  }
  
/* ローカライズ処理 =============================================================================*/
  func thirdLabel(){
        q4.text = "QrM-Zl-NWg.text".localized(lang: currentLanguage)
        q4_1.text = "QeF-y5-Fwh.text".localized(lang: currentLanguage)
        q4_2.text = "bpz-aG-gwE.text".localized(lang: currentLanguage)
        q4_3.text = "CLe-cR-F3E.text".localized(lang: currentLanguage)
        q5.text = "Q6e-2e-2RW.text".localized(lang: currentLanguage)
        q5_1.text = "P5n-vg-Q88.text".localized(lang: currentLanguage)
        q5_2.text = "kTH-GX-aER.text".localized(lang: currentLanguage)
        q5_3.text = "wF8-7Y-WIe.text".localized(lang: currentLanguage)
        q6.text = "W2j-Ym-KQb.text".localized(lang: currentLanguage)
        q6_1.text = "jbt-58-ouW.text".localized(lang: currentLanguage)
        q6_2.text = "5k8-SR-VrN.text".localized(lang: currentLanguage)
        q7.text = "1dl-ZB-lbB.text".localized(lang: currentLanguage)
  }
  
/* タッチアニメーション ==================================================================*/
  
  // ---------------------------------------
  // スケール1.3倍
  @IBAction func buattonDownAnim(_ sender: UIButton){
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
  
  // ----------------------------------------
  // Q4_1
  @IBAction func q4_1Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q4_1Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q4_1Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q4_1Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q4_2
  @IBAction func q4_2Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q4_2Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q4_2Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q4_2Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q4_3
  @IBAction func q4_3Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q4_3Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q4_3Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q4_3Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q5_1
  @IBAction func q5_1Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q5_1Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q5_1Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q5_1Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q5_2
  @IBAction func q5_2Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q5_2Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q5_2Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q5_2Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q5_3
  @IBAction func q5_3Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q5_3Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q5_3Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q5_3Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q6_1
  @IBAction func q6_1Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q6_1Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q6_1Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q6_1Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q6_2
  @IBAction func q6_2Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q6_2Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q6_2Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q6_2Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_1
  @IBAction func q7_1Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_1Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_1Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_1Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_2
  @IBAction func q7_2Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_2Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_2Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_2Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_3
  @IBAction func q7_3Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_3Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_3Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_3Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_4
  @IBAction func q7_4Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_4Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_4Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_4Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_5
  @IBAction func q7_5Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_5Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_5Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_5Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_6
  @IBAction func q7_6Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_6Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_6Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_6Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ----------------------------------------
  // Q7_7
  @IBAction func q7_7Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_7Button.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q7_7Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.q7_7Button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
}
