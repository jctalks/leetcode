class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = 0;  // Number of elements not equal to val

        for i in 0..<nums.count {
            if nums[i] != val {
                nums[k] = nums[i]   // Move non-val element to the front
                k += 1  // Increment count of non-val elements
            }
        }

        return k
    }
}