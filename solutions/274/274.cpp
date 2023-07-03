class Solution {
public:
    int hIndex(vector<int>& citations) {
        // Sort the citations in descending order
        sort(citations.begin(), citations.end(), greater<int>());
        
        int h_index = 0;

        for (int i = 0; i < citations.size(); i++) {
            if (citations[i] >= i + 1) {
                h_index = i + 1;
            }
        }

        return h_index;
    }
};