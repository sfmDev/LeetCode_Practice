import Foundation

/*
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

 If the last word does not exist, return 0.

 Note: A word is defined as a character sequence consists of non-space characters only.

 For example,
 Given s = "Hello World",
 return 5.
 */
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if s.characters.count == 0 {
            return 0
        }
        let a = s.components(separatedBy: " ").filter{$0 != ""}
        if a.count == 0 {
            return 0
        } else {
            return a.last!.characters.count
        }
    }
}

let a = Solution()
let b = a.lengthOfLastWord("Hello World")





