//
//  ZigZag Conversion.swift
//  RxExample
//
//  Created by PixelShi on 2017/2/11.
//  Copyright © 2017年 Krunoslav Zaher. All rights reserved.
//

import Foundation

/*
 Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You may assume no duplicates in the array.

 Here are few examples.
 [1,3,5,6], 5 → 2
 [1,3,5,6], 2 → 1
 [1,3,5,6], 7 → 4
 [1,3,5,6], 0 → 0
 */
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var rel: Int!
        if target > nums.last! {
            return nums.count
        }
        if target < nums[0] {
            return 0
        }
        for i in 0..<nums.count {
            if target > nums[i] {
                rel = i
            } else {
                return i
            }
        }
        return rel
    }
}

let a = Solution()
let b = a.searchInsert([1, 3, 5, 6], 7)





