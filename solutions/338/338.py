class Solution:
    def countBits(self, n):
        ans = []
        
        for i in range(n + 1):
            number = i
            sum = 0

            while number != 0:
                sum += number % 2
                number = number // 2
            
            ans.append(sum)

        return ans