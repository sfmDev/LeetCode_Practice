import Foundation

/*

 Given two binary trees, write a function to check if they are equal or not.

 Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {

    class TreeNode {
        var val: Int
        var left: TreeNode?
        var right: TreeNode?

        init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if p == nil || q == nil || p!.val != q!.val {
            return false
        }
        return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
    }
}





