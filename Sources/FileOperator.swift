//
//  FileOperator.swift
//  Enquete
//
//  Created by JECMM on 2017/09/10.
//  Copyright © 2017年 JECMM. All rights reserved.
//

import Foundation

class FileOperator {
  
  // 日付情報用
  var todayInfo = TodayInfo()
  
  var enqueteFilePath = ""
  var contentsFilePath = ["", "", "", "", "", "", ""]
  
  // 入力情報を書き出し
  func FileExport(data: String){
    
    let fileName = GetFileName()
    
    var filePath = NSHomeDirectory() + "/Documents/TGS2017_EnqueteData/" + fileName
    
    addTextToCSVFile(path: filePath, exportData: data)
  }
  
    
  // q3_2記述データを書き出し
  func FileExport(data: String, contentsName: String){
    
    var fileName = "TGS2017_Enquete_for_" + contentsName + ".txt"
    var filePath = NSHomeDirectory() + "/Documents/TGS2017_EnqueteData/Contents/" + fileName
    
    addTextToCSVFile(path: filePath, exportData: data)
  }
    
    // フィーリング用データの書き出し
    // q3_2記述データを書き出し
    func FileExport(data: String, hour: Int){
        
        let temp = TodayInfo()
        var fileName = ""
        
            switch(hour)
            {
            case 10:
                fileName = "10-11.csv"
                break
            case 11:
                fileName = "11-12.csv"
                break
            case 12:
                fileName = "12-13.csv"
                break
            case 13:
                fileName = "13-14.csv"
                break
            case 14:
                fileName = "14-15.csv"
                break
            case 15:
                fileName = "15-16.csv"
                break
            case 16:
                fileName = "16-17.csv"
                break
            default:
                fileName = "temp.csv"
                break
        }
            var filePath = NSHomeDirectory() + "/Documents/TGS2017_EnqueteData/Feeling/" + fileName
            addTextToCSVFile(path: filePath, exportData: data)
    }
    
    // 入力情報用のファイル名を取得
    private func GetFileName()->String{
        
        let today = todayInfo.GetToday()
        
        var sendFileName:String = ""
        
        switch (today){
        case 21:
            sendFileName = "Day1.csv"
            break
            
        case 22:
            sendFileName = "Day2.csv"
            break
            
        case 23:
            sendFileName = "Day3.csv"
            break
            
        case 24:
            sendFileName = "Day4.csv"
            
        default:
            sendFileName = "temp.csv"
            break
        }
        return sendFileName
    }
    
    
  // ファイルにデータを追記
  private func addTextToCSVFile(path: String, exportData: String){
      
      print("読み込むファイルのパス：\(path)")
      
      do{
        let fileHandle = try FileHandle(forWritingTo: URL(string :path)!)
        
        // ファイルの末尾に追記
        fileHandle.seekToEndOfFile()
        fileHandle.write(exportData.data(using: String.Encoding.shiftJIS)!)
        
        print("書き込み成功")
      }
      catch let error as NSError {
        print("書き込み失敗 \n エラー内容: \(error)")
      }
  }
}
