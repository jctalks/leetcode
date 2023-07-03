class Solution {
    public int hIndex(int[] citations) {
        // Sort the citations in descending order
        Arrays.sort(citations);

        int h_index = 0;

        for (int i = citations.length - 1; i >= 0; i--) {
            if (citations[i] >= citations.length - i) {
                h_index = citations.length - i;
            } else {
                break;
            }
        }

        return h_index;
    }
}