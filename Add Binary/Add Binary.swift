import Foundation

/*
 Given two binary strings, return their sum (also a binary string).
 */
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var result = ""
        var sum = 0
        let aChars = Array(a.characters)
        let bChars = Array(b.characters)
        var i = aChars.count - 1
        var j = bChars.count - 1
        var evl = 0

        while i>=0 || j >= 0 || evl > 0 {
            sum = evl // 进1位
            if i>=0 {
                sum += Int(String(aChars[i]))!
                i -= 1
            }
            if j>=0 {
                sum += Int(String(bChars[j]))!
                j -= 1
            }
            // sum 0, 1, 2
            // evl 0, 1
            evl = sum / 2
            sum = sum % 2
            result = String(sum) + result
        }

        return result
    }
}

let a = Solution()
let b = a.addBinary("11", "10")





