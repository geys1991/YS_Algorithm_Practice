import UIKit

/*
 * @lc app=leetcode.cn id=5 lang=swift
 *
 * ref: https://leetcode-cn.com/problems/longest-palindromic-substring/description/
 *
 * [5] 最长回文子串
 */

// @lc code=start
class Solution {
  
  // Solution 1: 中心扩散 不过超时了
//  func longestPalindrome(_ s: String) -> String {
//
//    if s.count <= 1 {
//      return s
//    }
//
//    var startIndex = 0
//    var endIndex = 0
//    for index in 0..<s.count {
//      let length1 = matchPalindrome(s, left: index, right: index)
//      let length2 = matchPalindrome(s, left: index, right: index + 1)
//      let length = max(length1, length2)
//      if length > endIndex - startIndex {
//        startIndex = index - (length - 1) / 2
//        endIndex = index + length / 2
//      }
//    }
//
//    let resStartIndex = s.index(s.startIndex, offsetBy: startIndex)
//    let resEndIndex = s.index(s.startIndex, offsetBy: endIndex)
//
//    return String(s[resStartIndex...resEndIndex])
//  }
//
//  func matchPalindrome(_ s: String, left: Int, right: Int) -> Int {
//
//    var l = left
//    var r = right
//
//    while l >= 0 && r < s.count && s[s.index(s.startIndex, offsetBy: l)] == s[s.index(s.startIndex, offsetBy: r)] {
//      l -= 1
//      r += 1
//    }
//    return r - l - 1
//  }
}

let r = Solution()

