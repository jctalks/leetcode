class Solution(object):
    def majorityElement(self, nums):
        majorityElement = 0
        count = 0
        for i in range (len(nums)):
            if count == 0:
                majorityElement = nums[i]
            if nums[i] == majorityElement:
                count += 1
            else:
                count -= 1
        return majorityElement