#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def maxSubArray(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        current = nums[0]
        sum = nums[0]

        for i in range(1, len(nums)):
            current = max(current + nums[i], nums[i])
            sum = max(current, sum)

        return sum


a = Solution()
b = a.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
print(b)