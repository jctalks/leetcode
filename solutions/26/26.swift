class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var k = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i-1] {
                nums[k] = nums[i]
                k += 1
            }
        }
        return k
    }
}