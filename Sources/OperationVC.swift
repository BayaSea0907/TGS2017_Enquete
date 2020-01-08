//
//  OperationVC.swift
//  Enquete
//
//  Created by JECMM on H29/09/12.
//  Copyright © 平成29年 JECMM. All rights reserved.
//
/*  ==================================================================*/

import UIKit

class OperationVC: UIViewController {

  @IBOutlet weak var textView: UITextView!
  let date: NSDate = NSDate()
  let calender = NSCalendar.current
  
  let FileNameArray:[String] = ["Day1.csv", "Day2.csv", "Day3.csv", "Day4.csv", "temp.csv"]
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let toDay =  calender.component(.day, from: date as Date)
    var fileName:String = ""
    
    // 日付別フォルダの割り当て
    switch(toDay){
      case 21:
        fileName = "Day1.csv"
        break
        
      case 22:
        fileName = "Day2.csv"
        break
        
      case 23:
        fileName = "Day3.csv"
        
        break
      case 24:
        fileName = "Day4.csv"
        break
        
      default:
        fileName = "temp.csv"
        break
    }
    
    dataLoad(fileName: fileName)
    }
    
    @IBAction func Day1(_ sender: UIButton) {
        dataLoad(fileName: "Day1.csv")
    }
    @IBAction func Day2(_ sender: UIButton) {
        dataLoad(fileName: "Day2.csv")
    }
    @IBAction func Day3(_ sender: UIButton) {
        dataLoad(fileName: "Day3.csv")
    }
    @IBAction func Day4(_ sender: UIButton) {
        dataLoad(fileName: "Day4.csv")
    }

    // ファイル読み込み
    func dataLoad(fileName: String){
        
        let path = NSHomeDirectory() + "/Documents/TGS2017_EnqueteData/" + fileName
        do{
            // パスを読み込み、UTF8コードに変換して文字列を取得
            if(path != nil){
                textView.text = try String(contentsOfFile: path, encoding: String.Encoding.shiftJIS)
            }
            print("ファイル読み込み成功")
        }
        catch{
            print("ファイル読み込み失敗")
        }
    }
}
