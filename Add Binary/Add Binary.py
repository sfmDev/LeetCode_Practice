#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def addBinary(self, a, b):
        """
        :type a: str
        :type b: str
        :rtype: str
        """
        result = ""
        sumVal = 0
        achars = list(a)
        bchars = list(b)
        i = len(achars) - 1
        j = len(bchars) - 1
        evl = 0

        while i >= 0 or j >= 0 or evl>0:
            sumVal = evl
            if i >= 0:
                sumVal += int(achars[i])
                i -= 1
            if j >= 0:
                sumVal += int(bchars[j])
                j -= 1

            evl = sumVal // 2
            sumVal = sumVal % 2
            result = str(sumVal) + result

        return result


a = Solution()
b = a.addBinary('1','1')
print(b)