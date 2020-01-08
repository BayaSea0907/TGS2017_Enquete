//
//  SimpleButton.swift
//  Enquete
//
//  Created by JECMM on 2017/08/30.
//  Copyright © 2017年 JECMM. All rights reserved.
//

import Foundation
import FlatUIKit

class SimpleButton: FUIButton{
  
  init(x:CGFloat, y:CGFloat, color:UIColor, shadow:UIColor ) {
    super.init(frame: CGRect(x:x, y:y, width: 200, height: 200 ))  //この部分の座標・サイズを自由に変更してください
    
    setTitle("HELLO", for: UIControlState.normal)   //この部分でボタンに表示される文字を変更することができます
    buttonColor = color
    shadowColor = shadow
    shadowHeight = 20.0
    cornerRadius = 500.0
    titleLabel?.font = UIFont.boldFlatFont (ofSize: 25)
    self.setTitleColor(UIColor.clouds(), for: UIControlState.normal)
    setTitleColor(UIColor.clouds(), for: UIControlState.highlighted)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
