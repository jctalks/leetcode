class Solution(object):
    def removeDuplicates(self, nums):
        count = 1   # Count of current element
        index = 1   # Index to place the next unique element

        for i in range(1, len(nums)):
            if (nums[i] == nums[i-1]):
                count += 1
            else:
                count = 1
                
            if (count <= 2):
                nums[index] = nums[i]
                index += 1
                
        return index