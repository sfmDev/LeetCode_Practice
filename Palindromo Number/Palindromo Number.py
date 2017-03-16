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


c = a.isPalindrome(0)
print(c)
