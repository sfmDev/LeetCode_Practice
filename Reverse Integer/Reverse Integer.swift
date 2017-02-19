//
//  Two_Sum.swift
//  Leetcode_parctice
//
//  Created by PixelShi on 2017/2/8.
//  Copyright © 2017年 sfmDev. All rights reserved.
//

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var res = 0
        var x = x
        while x != 0 {
            res = res * 10 + x % 10
            x = x / 10
            if res > Int(Int32.max) || res < Int(Int32.min) {
                return 0
            }
        }
        return res
    }
}
