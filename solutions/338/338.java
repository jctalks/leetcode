class Solution {
    public int[] countBits(int n) {
        int[] ans = new int[n + 1];
        
        for (int i = 0; i <= n; i++) {
            int number = i;
            int sum = 0;

            while (number != 0) {
                sum += number % 2;
                number = number / 2;
            }
            
            ans[i] = sum;
        }

        return ans;
    }
}