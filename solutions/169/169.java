class Solution {
    public int majorityElement(int[] nums) {
        int count = 0;
        int majorityElement = 0;

        for (int i = 0; i < nums.length; i++) {
            if (count == 0) {
                majorityElement = nums[i];
                count = 1;
            } else if (nums[i] == majorityElement) {
                count ++;
            } else {
                count --;
            }
        }

        return majorityElement;
    }
}