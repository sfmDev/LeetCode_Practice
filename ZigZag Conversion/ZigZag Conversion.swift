//
//  ZigZag Conversion.swift
//  RxExample
//
//  Created by PixelShi on 2017/2/11.
//  Copyright © 2017年 Krunoslav Zaher. All rights reserved.
//

import Foundation

/*
 6. ZigZag Conversion
 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"
 Write the code that will take a string and make this conversion given a number of rows:
 string convert(string text, int nRows);
 convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
 */

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }

        var ret: [Character] = []
        var chars: [Character] = [Character](s.characters)
        let cnt = chars.count

        for i in 0..<numRows {

            let len = 2 * numRows - 2
            var index = i
            while index < cnt {

                ret.append(chars[index])

                if i != 0 && i != numRows - 1 {
                    let tmpIndex = index + 2 * (numRows - i - 1)
                    if tmpIndex < cnt {
                        ret.append(chars[tmpIndex])
                    }
                }
                
                index += len
            }
        }
        
        return String(ret)
    }
}
