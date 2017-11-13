//
//  001_two_sum.swift
//  LeetCodeDemo
//
//  Created by lxz on 2017/11/13.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

func twoSum(array: [Int], target: Int) -> (Int, Int)? {
    var dict = [Int: Int]()
    for i in 0..<array.count {
        let value = target - array[i]
        if dict.keys.contains(value) {
            return (i, dict[value]!)
        }
        dict[array[i]] = i
    }
    
    return nil
}
