class Solution {
    public int removeDuplicates(int[] nums) {
        if (nums.length == 0) {
            return 0;
        }

        int count = 1;  // Count of current element
        int index = 1;  // Index to place the next unique element

        for (int i = 1; i < nums.length; i++) {
            if (nums[i] == nums[i - 1]) {
                count++;
            } else {
                count = 1;
            }

            if (count <= 2) {
                nums[index] = nums[i];
                index++;
            }
        }

        return index;
    }
}