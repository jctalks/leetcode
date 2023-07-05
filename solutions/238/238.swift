class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        
        var prefix = Array(repeating: 1, count: n)
        prefix[0] = 1
        for i in 1..<nums.count {
            prefix[i] = prefix[i - 1] * nums[i - 1]
        }
        
        var sufix = Array(repeating: 1, count: n)
        sufix[nums.count - 1] = 1
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            sufix[i] = sufix[i + 1] * nums[i + 1]
        }
        
        var ans = Array(repeating: 1, count: n)
        for i in 0..<ans.count {
            ans[i] = prefix[i] * sufix[i]
        }
        
        return ans
    }
}