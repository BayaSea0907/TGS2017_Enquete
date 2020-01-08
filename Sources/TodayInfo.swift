//
//  File.swift
//  Enquete
//
//  Created by JECMM on H29/09/18.
//  Copyright © 平成29年 JECMM. All rights reserved.
//

import Foundation

class TodayInfo{
  
  // 時間データ
  let date: NSDate = NSDate()
  let calender = NSCalendar.current
  
  func GetToday()->Int{
    let today:Int =  calender.component(.day, from: date as Date)
    return today
  }
    func GetHour()->Int{
        let hour:Int =  calender.component(.hour, from: date as Date)
        return hour
    }

  func GetTodayHourMinute()->String{
    let today:Int =  calender.component(.day, from: date as Date)
    let hour =  calender.component(.hour, from: date as Date)
    let minute =  calender.component(.minute, from: date as Date)
    
    let temp:String = "\(today)," + "\(hour)," + "\(minute),"
    
    return temp
  }
  
  // 時間データ全部取得
  /*
  func GetAllTime()->String{
    let year = calender.component(.year, from: date as Date)
    let month =  calender.component(.month, from: date as Date)
    let today =  calender.component(.day, from: date as Date)
    let hour =  calender.component(.hour, from: date as Date)
    let minute =  calender.component(.minute, from: date as Date)
    let second =  calender.component(.second, from: date as Date)
    
    let temp:String = "\(year)." + "\(month)." + "\(today). " + "\(hour):" + "\(minute):" + "\(second) "
    
    return temp
  }
   */
}
