//
//  Two_Sum.swift
//  Leetcode_parctice
//
//  Created by PixelShi on 2017/2/8.
//  Copyright © 2017年 sfmDev. All rights reserved.
//

import UIKit

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }

        var x = x
        var div = 1
        while (x/div >= 10) {
            div = div * 10
        }
        while x > 0 {
            print(div)
            let left = x / div
            print(left)
            let right = x % 10
            print(right)

            if left != right {
                return false
            }
            x = (x % div) / 10
            div = div / 100
        }
        return true
    }
}
