class Solution(object):
    def hIndex(self, citations):
        # Sort the citations in descending order
        citations.sort(reverse=True)
        
        h_index = 0

        for i in range(len(citations)):
            if citations[i] >= i + 1:
                h_index = i + 1

        return h_index