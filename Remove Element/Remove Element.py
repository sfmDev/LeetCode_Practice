#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        i=0
        j=0
        while j < len(nums):
            if nums[j] == val:
                j += 1
            else:
                nums[i] = nums[j]
                i += 1
                j += 1
        return i

a = Solution()
b = a.removeElement([3,2,2,3,4], 4)
print(b)