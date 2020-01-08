//
//  MenuVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/08.
//  Copyright © 平成29年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit


class MenuVC: UIViewController {

  
  @IBOutlet weak var operatButton: UIButton!
  
/* ビュー読み込み時の処理 ==================================================================*/
  override func viewDidLoad() {
      super.viewDidLoad()
  }
  
/* パスワード要求画面 ==================================================================*/
  @IBAction func CheckPassword (_sender: UIButton){
      self.performSegue(withIdentifier: "goOperation", sender: nil)
  }
}
