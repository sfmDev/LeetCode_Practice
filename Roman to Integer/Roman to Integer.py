#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def romanToInt(self, s):
        """
        :type s: str
        :rtype: int
        """
        dic = self.initDict()
        result = 0
        for i in range(0, len(s) - 1):
            if dic[s[i]] < dic[s[i+1]]:
                result -= dic[s[i]]
            else:
                result += dic[s[i]]
        return result + dic[s[-1]]

    def initDict(self):
        """
        :rtype: dict[String: Int]
        """
        dic = {"I": 1, "V": 5, "X": 10, "L":50,"C":100,"D":500,"M":1000}
        return dic



a = Solution()
b = a.romanToInt("IVXL")
print(b)


