"""
Given an integer array nums, find the contiguous subarray 
(containing at least one number) which has the largest sum and return its sum.

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
"""


def maxSubArray(self, nums: List[int]) -> int:
    best = nums[0]
    current = nums[0]
    for i in nums[1:]:
        current = max(i, current + i)
        if current > best:
            best = current
    return best
