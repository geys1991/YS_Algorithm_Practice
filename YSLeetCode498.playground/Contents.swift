import UIKit

/*
 * ref: https://leetcode-cn.com/problems/diagonal-traverse/description/
 * @lc app=leetcode.cn id=498 lang=swift
 *
 * [498] 对角线遍历
 */

// @lc code=start
class Solution {
  func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
    var flag = 0
    
    let xCount = matrix.first?.count ?? 0
    let yCount = matrix.count
    
    let maxCount = xCount + yCount - 2
    
    for index in 0..<maxCount {
      
      let startIndex = index
      for innerIndex in 0..<startIndex+1 {
        print("Current: \(matrix[innerIndex][index-innerIndex])")
      }
    }
    
    return []
  }
}

let values = [
  [ 1, 2, 3 ],
  [ 4, 5, 6 ],
  [ 7, 8, 9 ]
 ]

let s = Solution()
s.findDiagonalOrder(values)
