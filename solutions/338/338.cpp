class Solution {
public:
    vector<int> countBits(int n) {
        vector<int> ans;
        
        for(int i = 0; i <= n; i++) {
            int number = i;
            int sum = 0;

            while(number != 0) {
                sum += number % 2;
                number = number / 2;
            }
            
            ans.push_back(sum);
        }

        return ans;
    }
};