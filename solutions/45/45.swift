class Solution {
    func jump(_ nums: [Int]) -> Int {
        let n = nums.count
        if n <= 1 {
            return 0
        }
        
        var jumps = 0
        var currentPos = 0
        var maxReach = 0
        
        for i in 0..<(n - 1) {
            maxReach = max(maxReach, i + nums[i])
            if i == currentPos {
                jumps += 1
                currentPos = maxReach
            }
        }
        
        return jumps
    }
}