import UIKit

/*
 * 巴什博弈
 * ref: https://leetcode-cn.com/problems/nim-game/
 * @lc app=leetcode.cn id=292 lang=swift
 *
 * [292] Nim 游戏
 */

// @lc code=start
class Solution {
    func canWinNim(_ n: Int) -> Bool {
      return ((n % 4) != 0)
    }
}
// @lc code=end

