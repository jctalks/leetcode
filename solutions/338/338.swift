class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ans = [Int]()
        
        for i in 0...n {
            var number = i
            var sum = 0

            while number != 0 {
                sum += number % 2
                number /= 2
            }
            
            ans.append(sum)
        }

        return ans
    }
}