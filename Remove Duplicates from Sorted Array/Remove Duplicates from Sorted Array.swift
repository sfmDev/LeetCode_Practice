//
//  ZigZag Conversion.swift
//  RxExample
//
//  Created by PixelShi on 2017/2/11.
//  Copyright © 2017年 Krunoslav Zaher. All rights reserved.
//

import Foundation

/*
 Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

 Do not allocate extra space for another array, you must do this in place with constant memory.

 For example,
 Given input array nums = [1,1,2],

 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.
 */
class Solution {
    func removeDuplicates( nums:  inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var lastIndex = 0

        for num in nums {
            if num != nums[lastIndex] {
                lastIndex += 1
                nums[lastIndex] = num
            }
        }

        return lastIndex + 1
    }
}
