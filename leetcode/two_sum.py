class Solution:
    def twoSum(self, nums, target):
        for i in range(0, len(nums)-1):
            for j in range(i+1, len(nums)):
                list = []
                if nums[i]+nums[j] == target:
                    list.append(i)
                    list.append(j)
                    return list
