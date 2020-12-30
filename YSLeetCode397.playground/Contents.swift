import UIKit

/*
 * ref: https://leetcode-cn.com/problems/integer-replacement/description/
 * @lc app=leetcode.cn id=397 lang=swift
 *
 * [397] 整数替换
 */

// 递归
class Solution1 {
  func integerReplacement(_ n: Int) -> Int {
    if n == 1 {
      return 0
    }
    if n % 2 == 0 {
      return integerReplacement(n/2) + 1
    } else {
      let minV = integerReplacement(n-1) + 1
     let maxV = integerReplacement(n+1) + 1
      return min(minV, maxV)
    }
  }
}

// 位运算
class Solution2 {
  func integerReplacement(_ n: Int) -> Int {
    var intTemp = n
    var count = 0
    while intTemp != 1 {
      if intTemp & 1 == 0 {
        intTemp = intTemp >> 1
        count += 1
      } else {
        if intTemp & 2 == 0 {
          intTemp -= 1
          count += 1
        } else {
          if intTemp == 3 {
            count += 2
            break
          } else {
            intTemp += 1
          }
          count += 1
        }
      }
    }
    return count
  }
}





