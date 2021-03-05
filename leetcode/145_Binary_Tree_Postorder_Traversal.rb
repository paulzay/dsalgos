# frozen_string_literal: true

# Given the root of a binary tree, return the postorder traversal of its nodes' values.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
  return [] if root.nil?

  postorder_traversal(root.left) + postorder_traversal(root.right) + [root.val]
end
