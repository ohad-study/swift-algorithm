/// https://leetcode.com/problems/n-repeated-element-in-size-2n-array/
/// 반복되는 n
/**
2 <= n <= 5000
nums.length == 2 * n
0 <= nums[i] <= 10^4
*/

/// 공간복잡도: O(N),시간복잡도 O(N)
class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var numSets: Set<Int> = Set<Int>()

        for num in nums {
            if numSets.contains(num) {
                return num
            }

            numSets.insert(num)
        }

        return nums.last!
    }
}
