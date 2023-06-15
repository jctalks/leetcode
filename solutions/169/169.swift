class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var majorityElement = 0

        for i in 0..<nums.count {
            if count == 0 {
                majorityElement = nums[i]
                count = 1
            } else if nums[i] == majorityElement {
                count += 1
            } else {
                count -= 1
            }
        }

        return majorityElement
    }
}