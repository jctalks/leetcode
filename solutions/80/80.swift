class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        
        var count = 1   // Count of current element
        var index = 1   // Index to place the next unique element
        
        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] {
                count += 1
            } else {
                count = 1
            }
            
            if count <= 2 {
                nums[index] = nums[i]
                index += 1
            }
        }
        
        return index
    }
}