//
//  StringExtension.swift
//  Enquete
//
//  Created by 741pc_mac3 on 2017/09/13.
//  Copyright © 2017年 JECMM. All rights reserved.
//

import Foundation


//言語切り替え用
var currentLanguage: String = "ja"

//////////////////////////////////////////////////////
// 全てのString型からアクセスできる
extension String {
    func localized(lang: String) -> String {
        let path   = Bundle.main.path(forResource: lang, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
//////////////////////////////////////////////////////
