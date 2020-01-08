//
//  UserInfo.swift
//  Enquete
//
//  Created by JECMM on H29/09/03.
//  Copyright © 平成29年 JECMM. All rights reserved.
//

import Foundation

class UserInfo{
  
  var id:Int = 0    // ID  利用するか不明
  
  // ※0は未入力とする
  var q1:Int = 0    // Yes,No 1~2
  var q2:Int = 0    // キッカケ 1~6
  
  var q3:[Int] = [0,0,0,0,0,0]    // 遊ばれたコンテンツ x6コンテンツ
  var q3_1:[[Int]] = [[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0]]  // 良い点 1~3 x6コンテンツ
  var q3_2:[String] = [ "", "", "", "", "", "" ]  // 記述 x6コンテンツ
  var q3_3:[Int] = [0,0,0,0,0,0]  // 満足度 0~100 x6コンテンツ
  var q4:Int = 0    // スタッフ対応 1~3
  var q5:Int = 0    // また来たいか 1~3
  var q6:Int = 0    // 性別 1~2
  var q7:Int = 0    // 年齢 1~100
  
  // データのリセット
  func reset(){
    
    id = 0    // ID  利用するか不明
    
    // ※0は未入力とする
    q1 = 0    // Yes,No 1~2
    q2 = 0    // キッカケ 1~6
    
    q3 = [0,0,0,0,0,0]    // 1は遊ばれたコンテンツ x6コンテンツ
    q3_1 = [[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0]]  // 良い点 1~3 x6コンテンツ
    q3_2 = [ "", "", "", "", "", "" ]  // 記述 x6コンテンツ
    q3_3 = [0,0,0,0,0,0]  // 満足度 0~100x7コンテンツ
    q4 = 0    // スタッフ対応 1~3
    q5 = 0    // また来たいか 1~3
    q6 = 0    // 性別 1~2
    q7 = 0    // 年齢 1~100
  }
  
  // 数値を文字列に変換して返す
  func GetEnqueteData()->String{
    var exportData:String!
    let comma = ","
    
    // ++++++++++++++++++++++++++++++++++++++++++++++
    // エクセル用でデータを書き出し
    // ++++++++++++++++++++++++++++++++++++++++++++++
    
    // q1来場、q2キッカケ
    exportData =  "\(q1)" + comma + "\(q2)" + comma
      
    // q3試遊コンテンツ
    for i:Int in 0..<6{
      exportData.append("\(q3[i])")
      exportData.append(comma)
    }
    
    // q3-1良かった点
    for i:Int in 0..<6
    {
      for j:Int in 0..<7
      {
        // よかった点書き出し
        exportData.append("\(q3_1[i][j])")
        exportData.append(comma)
      }
      
      // 面白さ書き出し
      exportData.append("\(q3_3[i])")
      exportData.append(comma)
    }
    
    // q4スタッフ対応
    exportData.append("\(q4)")
    exportData.append(comma)
    
    // q5また来たいか
    exportData.append("\(q5)")
    exportData.append(comma)
    
    // q6性別
    exportData.append("\(q6)")
    exportData.append(comma)
    
    // q7年齢
    exportData.append("\(q7)")
    exportData.append(comma)
    exportData.append("\n")
    
    print(exportData)
    return exportData
  }
  
  // ++++++++++++++++++++++++++++++++++++++++++++++
  // コンテンツ別データのエクスポート
  // ++++++++++++++++++++++++++++++++++++++++++++++
  func GetContentsData()->[String]
  {
    
      // 選択されたコンテンツ毎にデータをファイルに追記
      var addToTextData:[String] = ["", "", "", "", "", ""]

      for i:Int in 0..<6{
        addToTextData[i] = q3_2[i] + ",\n"
        print(addToTextData[i])
      }
    
      return addToTextData
  }

    
    // フィーリング用データ
    // 性別, 選択ゲームx6, ,選択ゲームの面白さx6,
  func GetFeelingData()->String{
    
    var data:String = ""
    
    
    // 選択ゲームの取得
    data = "\(q6),"      // 性別
    
    for i:Int in 0..<6{
      data.append("\(q3[i]),")
    }
    
    // 選択ゲームの面白さを取得
    for i:Int in 0..<6{
      data.append("\(q3_3[i]),")
    }
    data.append("\n")
    
    print(data)
    return data
  }
}


