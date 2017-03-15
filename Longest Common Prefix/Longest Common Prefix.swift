//
//  Two_Sum.swift
//  Leetcode_parctice
//
//  Created by PixelShi on 2017/2/8.
//  Copyright © 2017年 sfmDev. All rights reserved.
//

import UIKit

/*
    14. Longest Common Prefix
Write a function to find the longest common prefix string amongst an array of strings.

Subscribe to see which companies asked this question.
*/
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return ""}

        var res = [Character](strs[0].characters)

        for str in strs {
            var strContent = [Character](str.characters)
            if res.count > strContent.count {
                res = Array(res[0..<strContent.count])
            }
            for i in 0..<res.count {
                if res[i] != strContent[i] {
                    res = Array(res[0..<i])
                    break
                }
            }
        }
        return String(res)
    }
}
