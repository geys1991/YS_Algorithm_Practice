import UIKit

/*
 * @lc app=leetcode.cn id=410 lang=swift
 *
 * ref: https://leetcode-cn.com/problems/split-array-largest-sum/description/
 * [410] 分割数组的最大值
 * 给定一个非负整数数组和一个整数 m，你需要将这个数组分成 m 个非空的连续子数组。设计一个算法使得这 m 个子数组各自和的最大值最小。
 */

class Solution {
  func splitArray(_ nums: [Int], _ m: Int) -> Int {
    
    var left = 0
    var right = 0
    
    for num in nums {
      left = max(left, num)
      right = right + num
    }
    
    while left < right {
      var count = 0
      var sum = 0
      let mid = (left + right) / 2
      
      for num in nums {
        sum = sum + num
        if sum > mid {
          count += 1
          sum = 0
          sum = sum + num
        }
      }
      
      count += 1
      
      if count > m {
        left = mid + 1
      } else {
        right = mid
      }
    }
    
    return left
  }
}

let nums = [7,2,5,10,8]

