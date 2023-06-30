class Solution(object):
    def jump(self, nums):
        n = len(nums)
        if n <= 1:
            return 0
        
        jumps = 0
        currentPos = 0
        maxReach = 0
        
        for i in range(n - 1):
            maxReach = max(maxReach, i + nums[i])
            if i == currentPos:
                jumps += 1
                currentPos = maxReach
        
        return jumps