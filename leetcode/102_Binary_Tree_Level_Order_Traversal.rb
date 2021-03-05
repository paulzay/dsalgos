# frozen_string_literal: true

# Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

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
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?

  queue = [root]
  result = []
  until queue.empty?
    result << queue.map(&:val)
    next_level = []
    queue.each do |node|
      next_level << node.left if node.left
      next_level << node.right if node.right
    end
    queue = next_level
  end
  result
end
