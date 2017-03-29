#! /usr/bin/env python
# -*- coding: utf-8 -*-

class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        if len(s) % 2 != 0:
            return False
        stack = []
        for char in s:
            if char == "(" or char == "[" or char == "{":
                stack.append(char)
            elif char == ")":
                if stack and stack.pop() != "(":
                    return False
            elif char == "]":
                if stack and stack.pop() != "[":
                    return False
            elif char == "}":
                if stack and stack.pop() != "{":
                    return False
        if stack:
            return False
        return True

a = Solution()
b = a.isValid("){")
print(b)
