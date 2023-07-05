class Solution {
public:
    vector<int> productExceptSelf(vector<int>& nums) {

        int n = nums.size();

        vector<int> prefix(n, 1);
        prefix[0] = 1;
        for(int i = 1; i < nums.size(); i++) {
            prefix[i] = prefix[i - 1] * nums[i - 1];
        }

        vector<int> sufix(n, 1);
        sufix[nums.size() - 1] = 1;
        for(int i = nums.size() - 2; i >= 0; i--) {
            sufix[i] = sufix[i + 1] * nums[i + 1];
        }

        vector<int> ans(n, 1);
        for(int i = 0; i < ans.size(); i++) {
            ans[i] = prefix[i] * sufix[i];
        }

        return ans;
    }
};