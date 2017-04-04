#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if len(nums) <= 1:
            return nums.count

        lastIndex = 0
        for num in nums:
            if num != nums[lastIndex]:
                lastIndex += 1
                nums[lastIndex] = num

        return lastIndex + 1







a = Solution()
c = a.removeDuplicates([1,2,2,3,4])
print(c)