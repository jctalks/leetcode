class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        // Sort the citations in ascending order
        let sortedCitations = citations.sorted()
        
        var hIndex = 0
        
        for i in (0..<sortedCitations.count).reversed() {
            if sortedCitations[i] >= sortedCitations.count - i {
                hIndex = sortedCitations.count - i
            } else {
                break
            }
        }
        
        return hIndex
    }
}