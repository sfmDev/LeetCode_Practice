import Foundation

/*
 Given a binary tree, find its minimum depth.

 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
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

    func maxDepth(root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return max(maxDepth(root: root.left), maxDepth(root: root.right)) + 1
    }
}





