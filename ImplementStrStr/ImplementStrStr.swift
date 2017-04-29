//
//  Implement strStr.swift
//
//  Created by PixelShi on 2017/2/11.
//  Copyright © 2017年 Krunoslav Zaher. All rights reserved.
//

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let hChars = Array(haystack.characters)
        let nChars = Array(needle.characters)

        guard hChars.count >= nChars.count else {
            return -1
        }
        guard nChars.count != 0 else {
            return 0
        }

        for i in 0...(hChars.count - nChars.count) {
            // 找到第一个相等的
            if hChars[i] == nChars[0] {
                for j in 0..<nChars.count {
                    // 如果子串某一位和父串不相等,退出循环
                    if hChars[i+j] != nChars[j] {
                        break
                    }
                    // 找到子串匹配父串
                    if j + 1 == nChars.count {
                        return i
                    }
                }
            }
        }
        
        return -1
    }
}
