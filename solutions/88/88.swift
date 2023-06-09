class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        // Set the pointers for the last elements of both arrays
        var i = m - 1   // Pointer for nums1
        var j = n - 1   // Pointer for nums2

        // Start from the end of the merged array (nums1)
        var k = m + n - 1

        // Merge the arrays from the end
        while i >= 0 && j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
        
        // Copy any remaining elements from nums2 to nums1
        while j >= 0 {
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
        }
    }
}