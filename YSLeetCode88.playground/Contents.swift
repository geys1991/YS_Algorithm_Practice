/*
 * ref: https://leetcode-cn.com/problems/merge-sorted-array/description/
 * @lc app=leetcode.cn id=88 lang=swift
 *
 * [88] 合并两个有序数组
 */

// @lc code=start
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var last = m + n - 1
        var index1 = m == 0 ? 0 : m - 1
        var index2 = n - 1

        while index1 >= 0, index2 >= 0 {
            if nums1[index1] > nums2[index2] {
                nums1[last] = nums1[index1]
                index1 -= 1
            } else {
                nums1[last] = nums2[index2]
                index2 -= 1
            }
            last -= 1
        }
        while index2 >= 0 {
            nums1[index2] = nums2[index2]
            index2 -= 1
        }
    }
}

// @lc code=end

