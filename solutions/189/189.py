class Solution(object):
    def reverse(self, nums, start, end):
        while(start < end):
            temp = nums[start]
            nums[start] = nums[end]
            nums[end] = temp
            start += 1
            end -= 1

    def rotate(self, nums, k):
        k = k % len(nums)
        self.reverse(nums, 0, len(nums) - 1)
        self.reverse(nums, k, len(nums) - 1)
        self.reverse(nums, 0, k - 1)