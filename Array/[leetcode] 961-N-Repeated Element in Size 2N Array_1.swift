/// https://leetcode.com/problems/n-repeated-element-in-size-2n-array/
/// 반복되는 n
/**
2 <= n <= 5000
nums.length == 2 * n
0 <= nums[i] <= 10^4


nums.length == 2 * n <- 고유한 요소는 nums[i] == nums[i+1] || nums[i] == nums[i+2]
*/

/// 공간복잡도: O(1),시간복잡도 O(N)
class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
       
       for i in (2..<nums.count) {
            if nums[i] == nums[i-1] || nums[i] == nums[i-2] {
                return nums[i]
            }
       }

        return nums.last!
    }
}
