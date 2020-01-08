//
//  StartVC.swift
//  Enquete
//
//  Created by JECMM on 2017/08/30.
//  Copyright © 2017年 JECMM. All rights reserved.
//8

import UIKit
import FlatUIKit

class StartVC: UIViewController {

  var myButton = SimpleButton(x: 300.0, y: 500.0, color: UIColor.sunflower(), shadow: UIColor.carrot())
  
  override func viewDidLoad() {
    super.viewDidLoad()

    myButton.setTitle("Start", for: UIControlState.normal)
    
    // このボタンを押された際のアクションを指定
    myButton.addTarget(self, action: #selector  (buttonAction), for: .touchUpInside)
    
    self.view.addSubview(myButton)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // 作成したボタンを押した際のアクション
  func buttonAction(sender: FUIButton)
  {
    
    performSegue(withIdentifier: "goFirst", sender: nil)
  }
}
