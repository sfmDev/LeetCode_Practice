import Foundation

/*
 Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

 For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
 the contiguous subarray [4,-1,2,1] has the largest sum = 6.
 */
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var current = nums[0]
        var sum = nums[0]

        for i in 1..<nums.count {
            current = max(current + nums[i], nums[i])
            sum = max(current, sum)
        }
        return sum
    }
}






