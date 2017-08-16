#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
        if len(s) == 0:
            return 0
        arr = s.strip().split()
        if len(arr) == 0:
            return 0
        else:
            return len(arr[len(arr) - 1])




a = Solution()
b = a.lengthOfLastWord("hello world")
print(b)
