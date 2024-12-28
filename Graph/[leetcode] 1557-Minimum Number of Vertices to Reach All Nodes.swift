import Foundation

/// https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/
class Solution {
    func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
        
        var vertices: [Int] = Array(repeating: 0, count: n)

        for edge in edges {
            let (from, to) = (edge[0], edge[1])
            vertices[to] += 1
        }

        return (0..<n).filter { vertices[$0] == 0 }
    }
}
