#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def convert(self, s, numRows):
        """
        :type s: str
        :type numRows: int
        :rtype: str
        """
        if numRows == 1 or numRows >= len(s):
            return s
        buff_list = [''] * numRows
        index = 0
        step = 1

        for x in s:
            print(buff_list)
            print(index)
            buff_list[index] += x
            print(buff_list)
            if index == 0:
                step = 1
            elif index == numRows - 1:
                step = -1

            index += step
        return ''.join(buff_list)

a = Solution()
b = a.convert("ABCDEFGHIJKLMN", 4)
print(b)