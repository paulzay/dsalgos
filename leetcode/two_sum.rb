# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
    return hash[target - n], i if hash[target - n]

    hash[n] = i
  end
end
