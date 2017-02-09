//
//  Two_Sum.swift
//  Leetcode_parctice
//
//  Created by PixelShi on 2017/2/8.
//  Copyright © 2017年 sfmDev. All rights reserved.
//

import UIKit

/* 1.Two Sum
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution.
 eg:Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */
class Solution1 {
    func twoSums(nums: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        var dict = [Int: Int]()

        for i in 0 ..< nums.count {
            guard let lastIndex = dict[target - nums[i]] else {
                dict[nums[i]] = i
                continue
            }
            res.append(lastIndex)
            res.append(i)
        }
        return res
    }
}
