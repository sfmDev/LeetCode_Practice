//
//  Remove Element.swift
//
//  Created by PixelShi on 2017/2/11.
//  Copyright © 2017年 sfm Developer. All rights reserved.
//

import Foundation

/*
 Given an array and a value, remove all instances of that value in place and return the new length.

 Do not allocate extra space for another array, you must do this in place with constant memory.

 The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 */
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var j = 0
        while j < nums.count {
            if nums[j] == val {
                j += 1
            } else {
                nums[i] = nums[j]
                i += 1
                j += 1
            }
        }
        return i
    }
}
