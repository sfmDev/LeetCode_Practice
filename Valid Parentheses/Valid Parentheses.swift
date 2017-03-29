//
//  ZigZag Conversion.swift
//  RxExample
//
//  Created by PixelShi on 2017/2/11.
//  Copyright © 2017年 Krunoslav Zaher. All rights reserved.
//

import Foundation

/*
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 */
class Solution {
    func isValid(_ s: String) -> Bool {
        var stackArray = [Character]()
        for char in s.characters {
            if char == "(" || char == "[" || char == "{" {
                stackArray.append(char)
            } else if char == ")" {
                guard stackArray.count != 0 && stackArray.removeLast() == "(" else {
                    return false
                }
            } else if char == "]" {
                guard stackArray.count != 0 && stackArray.removeLast() == "[" else {
                    return false
                }
            } else if char == "}" {
                guard stackArray.count != 0 && stackArray.removeLast() == "{" else {
                    return false
                }
            }
        }
        return stackArray.count == 0
    }
}

let a = Solution()
let b = a.isValid("{{{[[[]]]}}}]")





