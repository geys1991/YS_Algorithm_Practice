import UIKit

/*
 * ref: https://leetcode-cn.com/problems/trapping-rain-water/description/
 * @lc app=leetcode.cn id=42 lang=swift
 *
 * [42] 接雨水
 */

// @lc code=start
class Solution {
  func trap(_ height: [Int]) -> Int {
    if height.count == 0 {
      return 0
    }
    
    var stack: [Int] = []
    var maxTrap = 0
    
    for (index, item) in height.enumerated() {
      while stack.count != 0  && height[stack.last ?? 0] < item {
        let cur = stack.last ?? 0
        stack.removeLast()
        if stack.isEmpty {
          break
        }
        let top = height[stack.last ?? 0]
        let h = min(item, top) - height[cur]
        maxTrap += (index - (stack.last ?? 0) - 1) * h
      }
      stack.append(index)
    }
    
    return maxTrap
  }
}

let values = [0,1,0,2,1,0,1,3,2,1,2,1]
let s = Solution()
let res = s.trap(values)
