class Solution(object):
    def removeElement(self, nums, val):
        k = 0   # Number of elements not equal to val

        for i in range(len(nums)):
            if nums[i] != val:
                nums[k] = nums[i]   # Move non-val element to the front
                k += 1  # Increment count of non-val elements
                
        return k