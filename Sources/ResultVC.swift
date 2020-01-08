//
//  ResultVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/08.
//  Copyright © 平成29年 JECMM. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
  
    @IBOutlet weak var contentsButton: UISegmentedControl!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      super.viewDidLoad()
      var filePath = NSHomeDirectory() + "/Documents/TGS2017_EnqueteData/Contents/TGS2017_Enquete_for_AimRacing9.txt"
      
      print("読み込むファイルのパス：\(filePath)")
      
      do{
        // パスを読み込み、UTF8コードに変換して文字列を取得
        if(filePath != nil){
          textView.text = try String(contentsOfFile: filePath, encoding: String.Encoding.shiftJIS)
        }
        print("ファイル読み込み成功")
      }
        
      catch{
        print("ファイル読み込み失敗")
      }
    }
  
  @IBAction func ButtonAction(_ sender: UISegmentedControl) {
    let contentsIndex = sender.selectedSegmentIndex
    let contentsNameArray = ["AimRacing9", "Synesthesia", "BBLive", "Cubic", "Scrapper", "CM"]
    
    var filePath = NSHomeDirectory() + "/Documents/TGS2017_EnqueteData/Contents/TGS2017_Enquete_for_" + contentsNameArray[contentsIndex] + ".txt"
    
    print("読み込むファイルのパス：\(filePath)")
    
    do{
      // パスを読み込み、UTF8コードに変換して文字列を取得
      if(filePath != nil){
        textView.text = try String(contentsOfFile: filePath, encoding: String.Encoding.shiftJIS)
      }
      print("ファイル読み込み成功")
    }
      
    catch{
      print("ファイル読み込み失敗")
    }
  }
}
