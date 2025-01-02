/// https://www.acmicpc.net/problem/12865

// 공간: O(k), 시간: O(n*k)
import Foundation

final class Solution {
    
    func finaMaximumValue(
        _ n: Int,
        _ k: Int,
        _ stuffs: [(weight: Int, value: Int)]
    ) -> Int {
        
        var dp: [Int] = Array<Int>(repeating: 0, count: k + 1)
        
        for (weight, value) in stuffs {
            for i in stride(from: k, through: weight, by: -1) {
                dp[i] = max(dp[i], dp[i - weight] + value)
            }
        }
        
        return dp.last!
    }
    
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (input[0], input[1])
var stuffs: [(weight: Int, value: Int)] = []
(0..<n).forEach {_ in
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    stuffs.append((weight: input[0], value: input[1]))
}

let solution = Solution()
let answer = solution.finaMaximumValue(n, k, stuffs)
print(answer)
