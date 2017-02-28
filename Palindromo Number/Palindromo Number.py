#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        if x<0:
            return False
        elif x==0:
            return True
        buff_x = x
        div = 1
        while x/div >= 10:
            div = div * 10

        while buff_x > 0:
            left = buff_x / div
            right = buff_x % 10
            if left != right:
                return  False
            buff_x = (buff_x % div) / 10
            div = div / 100
        return True



    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        sign = 1
        if x<0:
            sign = -1
        num = abs(x)
        res = 0
        while num != 0:
            res = res * 10 + num % 10
            num = num // 10
            # " / "就表示 浮点数除法，返回浮点结果;" // "表示整数除法
        if res > (0x7FFFFFFF):
            return 0
        if res < -(0x7FFFFFFF) - 1:
            return 0

        return res * sign


a = Solution()
b = a.reverse(-123)
print(b)

c = a.isPalindrome(0)
print(c)
