//
//  Two_Sum.swift
//  Leetcode_parctice
//
//  Created by PixelShi on 2017/2/8.
//  Copyright © 2017年 sfmDev. All rights reserved.
//


/*
    Given a roman numeral, convert it to an integer.
 */

import UIKit

class Solution {
    func romanToInt(s: String) -> Int {
        let dict = dataDic()
        let chars = [Character](s.characters.reversed())
        var result: Int = 0
        for i in 0 ..< chars.count {
            guard let current = dict[String(chars[i])] else {
                return result
            }
            if i > 0 && current < dict[String(chars[i - 1])]! {
                result -= current
            } else {
                result += current
            }
        }
        return result
    }

    private func dataDic() -> [String: Int] {
        var dict = [String: Int]()
        dict["I"] = 1
        dict["V"] = 5
        dict["X"] = 10
        dict["L"] = 50
        dict["C"] = 100
        dict["D"] = 500
        dict["M"] = 1000
        return dict
    }
}
