class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0

        for i in 0..<prices.count {
            if (prices[i] < minPrice) {
                minPrice = prices[i]
            }

            var profit = prices[i] - minPrice

            if (profit > maxProfit) {
                maxProfit = profit
            }
        }

        return maxProfit
    }
}