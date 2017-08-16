#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def searchInsert(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        rel = 0
        if target < nums[0]:
            return 0
        if target > nums[len(nums) - 1]:
            return len(nums)
        for i in range(len(nums)):
            if target > nums[i]:
                rel = target
            else:
                return i
        return rel

a = Solution()
b = a.searchInsert([1, 3, 5, 6], 7)
print(b)
