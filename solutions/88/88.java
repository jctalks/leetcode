class Solution {
    public void merge(int[] nums1, int m, int[] nums2, int n) {
        // Set the pointers for the last elements of both arrays
        int i = m - 1;  // Pointer for nums1
        int j = n - 1;  // Pointer for nums2

        // Start from the end of the merged array (nums1)
        int k = m + n - 1;

        // Merge the arrays from the end
        while (i >= 0 && j >= 0) {
            if (nums1[i] > nums2[j]) {
                nums1[k] = nums1[i];
                i --;
            } else {
                nums1[k] = nums2[j];
                j--;
            }
            k--;
        }

        // Copy any remaining elements from nums2 to nums1
        while (j >= 0) {
            nums1[k] = nums2[j];
            j--;
            k--;
        }
    }
}