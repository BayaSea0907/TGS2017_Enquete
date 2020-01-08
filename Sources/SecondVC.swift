//
//  SecondVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/03.
//  Copyright © 平成29年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit


class SecondVC: UIViewController {
  
  
  let appDelegate = UIApplication.shared.delegate as! AppDelegate
  var m_q1:Int = 0
  var m_q2:Int = 0
  var m_q3:[Int] = [0,0,0,0,0,0]
  
  // ステータスバーの非表示
  override var prefersStatusBarHidden: Bool { return true }
  
  /*ラベル一覧アウトレット接続*/
  @IBOutlet weak var label1: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var label3: UILabel!
  @IBOutlet weak var label4: UILabel!
  @IBOutlet weak var label5: UILabel!
  @IBOutlet weak var label6: UILabel!
  @IBOutlet weak var label7: UILabel!
  @IBOutlet weak var label8: UILabel!
  @IBOutlet weak var label9: UILabel!
  @IBOutlet weak var label10: UILabel!
  @IBOutlet weak var label11: UILabel!
  @IBOutlet weak var label12: UILabel!
  @IBOutlet weak var label13: UILabel!
  
  // nextButton
  @IBOutlet weak var nextButton: UIButton!
  
  //使うボタンの宣言
  @IBOutlet weak var Y: UIButton!
  @IBOutlet weak var N: UIButton!
  @IBOutlet weak var Ysub: UIButton!
  @IBOutlet weak var Nsub: UIButton!
  
  /*ローカライズ用*/
  @IBOutlet weak var jpn: UIButton!
  @IBOutlet weak var eng: UIButton!
  
  //使うボタンの宣言
  @IBOutlet weak var aimButton: UIButton!
  @IBOutlet weak var vrButton: UIButton!
  @IBOutlet weak var bbButton: UIButton!
  @IBOutlet weak var cbButton: UIButton!
  @IBOutlet weak var srButton: UIButton!
  @IBOutlet weak var cmButton: UIButton!
  
  @IBOutlet weak var r1: UIButton!
  @IBOutlet weak var r2: UIButton!
  @IBOutlet weak var r3: UIButton!
  @IBOutlet weak var r4: UIButton!
  @IBOutlet weak var r5: UIButton!
  @IBOutlet weak var r6: UIButton!
  @IBOutlet weak var r1sub: UIButton!
  @IBOutlet weak var r2sub: UIButton!
  @IBOutlet weak var r3sub: UIButton!
  @IBOutlet weak var r4sub: UIButton!
  @IBOutlet weak var r5sub: UIButton!
  @IBOutlet weak var r6sub: UIButton!
  
  let japaneseTrue:UIImage = UIImage(named:"jpn_t.png")!
  let japaneseFalse:UIImage = UIImage(named:"jpn_f.png")!
  let englishTrue:UIImage = UIImage(named:"eng_t.png")!
  let englishFalse:UIImage = UIImage(named:"eng_f.png")!
  
  @IBOutlet weak var backgroundImage: UIImageView!
  @IBOutlet weak var jecLogoImage: UIImageView!
  @IBOutlet weak var nextButtonImage: UIImageView!

/* ビュー読み込み時の処理  ==================================================================*/
  override func viewDidLoad(){
    super.viewDidLoad()
    self.view.isUserInteractionEnabled = true

    //最初に日本語を表示する
    if(currentLanguage == "ja"){
      jpn.setImage(japaneseTrue, for: UIControlState())
      eng.setImage(englishFalse, for: UIControlState())
      secondLabel()
    }
    else{
      jpn.setImage(japaneseFalse, for: UIControlState())
      eng.setImage(englishTrue, for: UIControlState())
      secondLabel()
    }
    
    backgroundImage.alpha = 0
    jpn.alpha = 0
    eng.alpha = 0
    jecLogoImage.alpha = 0
    nextButton.alpha = 0
    nextButtonImage.alpha = 0
    label1.alpha = 0
    label2.alpha = 0
    label3.alpha = 0
    label4.alpha = 0
    label5.alpha = 0
    label6.alpha = 0
    label7.alpha = 0
    label8.alpha = 0
    label9.alpha = 0
    label10.alpha = 0
    label11.alpha = 0
    label12.alpha = 0
    label13.alpha = 0
    Y.alpha = 0
    N.alpha = 0
    r1.alpha = 0
    r2.alpha = 0
    r3.alpha = 0
    r4.alpha = 0
    r5.alpha = 0
    r6.alpha = 0
    
    aimButton.alpha = 0
    vrButton.alpha = 0
    bbButton.alpha = 0
    cbButton.alpha = 0
    srButton.alpha = 0
    cmButton.alpha = 0
  }
  
  
/* 画面表示後  ==================================================================*/
  override func viewWillAppear(_ animated: Bool) {
    //
    UIView.animate(withDuration: 1.0,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.backgroundImage.alpha = 1
    }, completion: nil)
    
    // 0.5秒後の処理
    UIView.animate(withDuration: 1.0,
                   delay: 0.5,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.jecLogoImage.alpha = 1
    }, completion: nil)
    
    // 1秒後
    UIView.animate(withDuration: 2.0,
                     delay: 1.0,
                     options:  UIViewAnimationOptions.curveEaseInOut,
                     animations: {
                      self.label1.alpha = 1
                      self.label2.alpha = 1
                      self.jpn.alpha = 1
                      self.eng.alpha = 1
    }, completion: nil)
    
    // 2秒後
    UIView.animate(withDuration: 2.0,
                   delay: 2.0,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.label3.alpha = 1
                    self.label4.alpha = 1
                    self.label5.alpha = 1
                    self.Y.alpha = 1
                    self.N.alpha = 1
    }, completion: nil)
    
    // 3秒後
    UIView.animate(withDuration: 2.0,
                   delay: 3.0,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.label4.alpha = 1
                    self.label5.alpha = 1
                    self.label6.alpha = 1
                    self.label7.alpha = 1
                    self.label8.alpha = 1
                    self.label9.alpha = 1
                    self.label10.alpha = 1
                    self.label11.alpha = 1
                    self.label12.alpha = 1
                    self.r1.alpha = 1
                    self.r2.alpha = 1
                    self.r3.alpha = 1
                    self.r4.alpha = 1
                    self.r5.alpha = 1
                    self.r6.alpha = 1
    }, completion: nil)
    
    // 4秒後
    UIView.animate(withDuration: 2.0,
                   delay: 4.0,
                   options:  UIViewAnimationOptions.curveEaseInOut,
                   animations: {
                    self.label13.alpha = 1
                    self.aimButton.alpha = 1
                    self.vrButton.alpha = 1
                    self.bbButton.alpha = 1
                    self.cbButton.alpha = 1
                    self.srButton.alpha = 1
                    self.cmButton.alpha = 1
                    self.nextButton.alpha = 1
                    self.nextButtonImage.alpha = 0.8
    }, completion: nil)
    
    // NextButtonアニメーション
    UIView.animate(withDuration: 2.0,
                   delay: 6.0,
                   options:  UIViewAnimationOptions.repeat,
                   animations: {
                    self.nextButtonImage.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                    self.nextButtonImage.alpha = 0.0
    }, completion: nil)
  }

  @IBAction func a(_ sender: Any) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.Y.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
    }, completion: nil)
  }
  @IBAction func exit(_ sender: Any) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.Y.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  @IBAction func upinside(_ sender: Any) {
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.Y.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
/*　言語切り替え  ==================================================================*/
  
  // 日本語
  @IBAction func changeJapanese(_ sender: Any) {
        currentLanguage = "ja"
        
        jpn.setImage(japaneseTrue, for: UIControlState())
        eng.setImage(englishFalse, for: UIControlState())
        
        secondLabel()
  }
  
  // 英語
  @IBAction func changeEnglish(_ sender: Any) {
        currentLanguage = "Base"
        
        eng.setImage(englishTrue, for: UIControlState())
        jpn.setImage(japaneseFalse, for: UIControlState())
        
      secondLabel()
  }

  
/* Q1 初めての来場か ==================================================================*/
    
    //RadioButton切替カウント
    var radioCountY = 0
    var radioCountN = 0

    //radioButtonImageインスタンス化
    let imageTrue:UIImage = UIImage(named:"radio2_t.png")!
    let imageFalse:UIImage = UIImage(named:"radio1_f.png")!
    
    @IBAction func radioTappedY(_ sender: UIButton) {
        radioCountY += 1
        
        if(radioCountY%2 == 0)
        {
            Y.setImage(imageFalse, for: UIControlState())
            m_q1 = 0
        }
        else
        {
            Y.setImage(imageTrue, for: UIControlState())
            N.setImage(imageFalse, for: UIControlState())
            m_q1 = 1
            radioCountN = 0
        }
    }
  
    @IBAction func radioTappedN(_ sender: UIButton) {
        radioCountN += 1
        
        if(radioCountN%2 == 0)
        {
            N.setImage(imageFalse, for: UIControlState())
            m_q1 = 0
        }
        else
        {
            N.setImage(imageTrue, for: UIControlState())
            Y.setImage(imageFalse, for: UIControlState())
            m_q1 = 2
            
            radioCountY = 0
        }
    }
  
/* Q2 来場のキッカケ ============================================================================*/
    
    //RadioButton切替カウント
    var radioCountR1 = 0
    var radioCountR2 = 0
    var radioCountR3 = 0
    var radioCountR4 = 0
    var radioCountR5 = 0
    var radioCountR6 = 0
    
    @IBAction func radioTapped2_1(_ sender: Any) {
        radioCountR1 += 1
        
        if(radioCountR1%2 == 0)
        {
            r1.setImage(imageFalse, for: UIControlState())
            m_q2 = 0
        }
        else
        {
            r1.setImage(imageTrue, for: UIControlState())
            r2.setImage(imageFalse, for: UIControlState())
            r3.setImage(imageFalse, for: UIControlState())
            r4.setImage(imageFalse, for: UIControlState())
            r5.setImage(imageFalse, for: UIControlState())
            r6.setImage(imageFalse, for: UIControlState())
            
            radioCountR2 = 0
            radioCountR3 = 0
            radioCountR4 = 0
            radioCountR5 = 0
            radioCountR6 = 0
          
          m_q2 = 1
        }
    }
  
    @IBAction func radioTapped2_2(_ sender: Any) {
        radioCountR2 += 1
        
        if(radioCountR2%2 == 0)
        {
            r2.setImage(imageFalse, for: UIControlState())
            m_q2 = 0
        }
        else
        {
            r2.setImage(imageTrue, for: UIControlState())
            r1.setImage(imageFalse, for: UIControlState())
            r3.setImage(imageFalse, for: UIControlState())
            r4.setImage(imageFalse, for: UIControlState())
            r5.setImage(imageFalse, for: UIControlState())
            r6.setImage(imageFalse, for: UIControlState())
            
            radioCountR1 = 0
            radioCountR3 = 0
            radioCountR4 = 0
            radioCountR5 = 0
            radioCountR6 = 0
          
          m_q2 = 2
        }
    }
  
    @IBAction func radioTapped2_3(_ sender: Any) {
        radioCountR3 += 1
        
        if(radioCountR3%2 == 0)
        {
            r3.setImage(imageFalse, for: UIControlState())
            appDelegate.myUserInfo.q2 = 0
        }
        else
        {
            r3.setImage(imageTrue, for: UIControlState())
            r1.setImage(imageFalse, for: UIControlState())
            r2.setImage(imageFalse, for: UIControlState())
            r4.setImage(imageFalse, for: UIControlState())
            r5.setImage(imageFalse, for: UIControlState())
            r6.setImage(imageFalse, for: UIControlState())
            
            radioCountR1 = 0
            radioCountR2 = 0
            radioCountR4 = 0
            radioCountR5 = 0
            radioCountR6 = 0
          appDelegate.myUserInfo.q2 = 3
        }
    }
  
    @IBAction func radioTapped2_4(_ sender: Any) {
        radioCountR4 += 1
        
        if(radioCountR4%2 == 0)
        {
            r4.setImage(imageFalse, for: UIControlState())
            m_q2 = 0
        }
        else
        {
            r4.setImage(imageTrue, for: UIControlState())
            r1.setImage(imageFalse, for: UIControlState())
            r2.setImage(imageFalse, for: UIControlState())
            r3.setImage(imageFalse, for: UIControlState())
            r5.setImage(imageFalse, for: UIControlState())
            r6.setImage(imageFalse, for: UIControlState())
            
            radioCountR1 = 0
            radioCountR2 = 0
            radioCountR3 = 0
            radioCountR5 = 0
            radioCountR6 = 0
            m_q2 = 4
        }
    }
  
    @IBAction func radioTapped2_5(_ sender: Any) {
        radioCountR5 += 1
        
        if(radioCountR5%2 == 0)
        {
            r5.setImage(imageFalse, for: UIControlState())
            m_q2 = 0
        }
        else
        {
            r5.setImage(imageTrue, for: UIControlState())
            r1.setImage(imageFalse, for: UIControlState())
            r2.setImage(imageFalse, for: UIControlState())
            r3.setImage(imageFalse, for: UIControlState())
            r4.setImage(imageFalse, for: UIControlState())
            r6.setImage(imageFalse, for: UIControlState())
            
            radioCountR1 = 0
            radioCountR2 = 0
            radioCountR3 = 0
            radioCountR4 = 0
            radioCountR6 = 0
            m_q2 = 5
        }
    }
  
    @IBAction func radioTapped2_6(_ sender: Any) {
        radioCountR6 += 1
        
        if(radioCountR6%2 == 0)
        {
            r6.setImage(imageFalse, for: UIControlState())
            m_q2 = 0
        }
        else
        {
            r6.setImage(imageTrue, for: UIControlState())
            r1.setImage(imageFalse, for: UIControlState())
            r2.setImage(imageFalse, for: UIControlState())
            r3.setImage(imageFalse, for: UIControlState())
            r4.setImage(imageFalse, for: UIControlState())
            r5.setImage(imageFalse, for: UIControlState())
            
            radioCountR1 = 0
            radioCountR2 = 0
            radioCountR3 = 0
            radioCountR4 = 0
            radioCountR5 = 0
            m_q2 = 6
        }
    }
  
   
/* Q3 試遊コンテンツ =============================================================================*/

  //checkBox切替カウント
  var aim = 0
  var vr = 0
  var bb = 0
  var cb = 0
  var sr = 0
  var cm = 0
    
    
  //GameTitleImageインスタンス化
  let aim_t:UIImage = UIImage(named:"aim_t.png")!
  let aim_f:UIImage = UIImage(named:"aim_f.png")!
  let vr_t:UIImage = UIImage(named:"vr_t.png")!
  let vr_f:UIImage = UIImage(named:"vr_f.png")!
  let bb_t:UIImage = UIImage(named:"bb_t.png")!
  let bb_f:UIImage = UIImage(named:"bb_f.png")!
  let cb_t:UIImage = UIImage(named:"cb_t.png")!
  let cb_f:UIImage = UIImage(named:"cb_f.png")!
  let sr_t:UIImage = UIImage(named:"sr_t.png")!
  let sr_f:UIImage = UIImage(named:"sr_f.png")!
  let cm_t:UIImage = UIImage(named:"cm_t.png")!
  let cm_f:UIImage = UIImage(named:"cm_f.png")!
    
  // Aim
    @IBAction func aimTapped(_ sender: UIButton) {
        aim += 1
        
        if(aim%2 == 0)
        {
            aimButton.setImage(aim_f, for: UIControlState())
            m_q3[0] = 0
        }
        else
        {
            aimButton.setImage(aim_t, for: UIControlState())
            m_q3[0] = 1
        }
    }
  
    // Synesthesia
    @IBAction func vrTapped(_ sender: UIButton) {
        vr += 1
        
        if(vr%2 == 0)
        {
            vrButton.setImage(vr_f, for: UIControlState())
            m_q3[1] = 0
        }
        else
        {
            vrButton.setImage(vr_t, for: UIControlState())
            m_q3[1] = 1
        }
    }
  
    // BBLive
    @IBAction func bbTapped(_ sender: UIButton) {
        bb += 1
        
        if(bb%2 == 0)
        {
            bbButton.setImage(bb_f, for: UIControlState())
            m_q3[2] = 0
        }
        else
        {
            bbButton.setImage(bb_t, for: UIControlState())
            m_q3[2] = 1
        }
    }
  
    // Cubic
    @IBAction func cbTapped(_ sender: UIButton) {
        cb += 1
        
        if(cb%2 == 0)
        {
            cbButton.setImage(cb_f, for: UIControlState())
            m_q3[3] = 0
        }
        else
        {
            cbButton.setImage(cb_t, for: UIControlState())
            m_q3[3] = 1
        }
    }
  
    // Scrapper
    @IBAction func srTapped(_ sender: UIButton) {
        sr += 1
        
        if(sr%2 == 0)
        {
            srButton.setImage(sr_f, for: UIControlState())
            m_q3[4] = 0
        }
        else
        {
            srButton.setImage(sr_t, for: UIControlState())
            m_q3[4] = 1
        }
    }
  
    // C.M
    @IBAction func cmTapped(_ sender: UIButton) {
        cm += 1
        
        if(cm%2 == 0)
        {
            cmButton.setImage(cm_f, for: UIControlState())
            m_q3[5] = 0
        }
        else
        {
            cmButton.setImage(cm_t, for: UIControlState())
            m_q3[5] = 1
        }
    }

/* 次へボタン ============================================================================*/
    @IBAction func nextTapped(_ sender: UIButton) {
      
      self.appDelegate.myUserInfo.q1 = m_q1
      self.appDelegate.myUserInfo.q2 = m_q2
      self.appDelegate.myUserInfo.q3 = m_q3
      
      // アニメーション
      UIView.animate(withDuration: 2.0,
                     delay: 0.0,
                     options:  UIViewAnimationOptions.curveEaseInOut,
                     animations: {
                      self.nextButtonImage.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
      }, completion: nil)
      UIView.animate(withDuration: 0.7,
                     delay: 0.21,
                     options:  UIViewAnimationOptions.curveEaseOut,
                     animations: {
                      self.nextButtonImage.transform = CGAffineTransform(scaleX: 1.6, y: 1.6)
                      self.nextButtonImage.alpha = 0.0
      }, completion: nil)
      
      // 0.5
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
        if(self.m_q3[0] == 1){
          self.performSegue(withIdentifier: "goAim", sender: nil)
        }
        else if(self.m_q3[1] == 1){
          self.performSegue(withIdentifier: "goSynesthesia", sender: nil)
        }
        else if(self.m_q3[2] == 1){
          self.performSegue(withIdentifier: "goBBLive", sender: nil)
        }
        else if(self.m_q3[3] == 1){
          self.performSegue(withIdentifier: "goCubic", sender: nil)
        }
        else if(self.m_q3[4] == 1){
          self.performSegue(withIdentifier: "goScrapper", sender: nil)
        }
        else if(self.m_q3[5] == 1){
          self.performSegue(withIdentifier: "goCM", sender: nil)
        }
        else{
          self.performSegue(withIdentifier: "goThirdVC", sender: nil)
        }
      })
    }

/* 画面非表示後の処理 ==================================================================*/
  override func viewDidDisappear(_ animated: Bool) {
    self.nextButtonImage.stopAnimating()
    self.nextButtonImage.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    self.nextButtonImage.alpha = 0.0
  }
  
  //ラベルまとめ
  func secondLabel(){
        label1.text = "aRH-fj-pfc.text".localized(lang: currentLanguage)
        label2.text = "5H4-tw-t3M.text".localized(lang: currentLanguage)
        label3.text = "kAr-MN-vPX.text".localized(lang: currentLanguage)
        label4.text = "L1b-q8-3ym.text".localized(lang: currentLanguage)
        label5.text = "l8r-ma-mfN.text".localized(lang: currentLanguage)
        label6.text = "VdD-C3-dJA.text".localized(lang: currentLanguage)
        label7.text = "bQ4-St-GGp.text".localized(lang: currentLanguage)
        label8.text = "ZnD-sN-tzb.text".localized(lang: currentLanguage)
        label9.text = "Mmu-DN-prm.text".localized(lang: currentLanguage)
        label10.text = "RoM-JJ-PfU.text".localized(lang: currentLanguage)
        label11.text = "Bhh-2L-0He.text".localized(lang: currentLanguage)
        label12.text = "fCF-7f-1iS.text".localized(lang: currentLanguage)
        label13.text = "ZKw-JK-KeQ.text".localized(lang: currentLanguage)
  }
  
/* タッチアニメーション ==================================================================*/
  // ------------------------------------------
  // 共通
  // スケール1.3倍
  @IBAction func gameBuattonTouchDownAnim(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    sender.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
    }, completion: nil)
  }
  // スケール2.2倍
  @IBAction func buttonTouchDownAnim(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    sender.transform = CGAffineTransform(scaleX: 2.2, y: 2.2)
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
  
  // ------------------------------------------
  // Q1 
  // Y
  @IBAction func q1_Y_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.Y.transform = CGAffineTransform(scaleX: 2.2, y: 2.2)
    }, completion: nil)
  }
  @IBAction func q1_Y_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.Y.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // N
  @IBAction func q1_N_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.N.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q1_N_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.N.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // Q2
  // Q2_1
  @IBAction func q2_1_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r1.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q2_1_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r1.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // q2_2
  @IBAction func q2_2_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r2.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q2_2_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r2.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // q2_3
  @IBAction func q2_3_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r3.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q2_3_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r3.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // q2_4
  @IBAction func q2_4_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r4.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q2_4_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r4.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // q2_5
  @IBAction func q2_5_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r5.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q2_5_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r5.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
  
  // ------------------------------------------
  // q2_6
  @IBAction func q2_6_Down(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r6.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    }, completion: nil)
  }
  @IBAction func q2_6_Exit(_ sender: UIButton){
    UIView.animate(withDuration: 0.2,
                   delay: 0.0,
                   options:  UIViewAnimationOptions.curveEaseOut,
                   animations: {
                    self.r6.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }, completion: nil)
  }
}
