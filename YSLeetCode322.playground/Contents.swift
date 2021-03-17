/*
 * ref: https://leetcode-cn.com/problems/coin-change/description/
 * @lc app=leetcode.cn id=322 lang=swift
 *
 * [322] 零钱兑换
 */

// @lc code=start
class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var memory: [Int: Double] = [:]
        return dp(coins, amount, &memory)
    }

    func dp(_ coins: [Int], _ amount: Int, _ memory: inout [Int: Double]) -> Int {
        if let memoryRes = memory[amount] {
            if memoryRes == Double.infinity {
                return -1
            } else {
                return Int(memoryRes)
            }
        }

        if amount == 0 {
            return 0
        }
        if amount < 0 {
            return -1
        }

        var res = Double.infinity
        for coin in coins {
            let subproblem = dp(coins, amount - coin, &memory)
            if subproblem < 0 {
                continue
            }
            res = min(res, Double(1 + subproblem))
        }
        memory[amount] = res == Double.infinity ? -1 : res
        return Int(memory[amount]!)
    }
}

// @lc code=end

