//
//  main.swift
//  calculator-v2
//
//  Created by Xiaowen Feng on 4/5/16.
//  Copyright © 2016 Xiaowen Feng. All rights reserved.
//

import Foundation

// basic operation
let add : (Int, Int) -> Int = {(left, right) in left + right}

let subtract : (Int, Int) -> Int = {(left, right) in left - right }

let multiply : (Int, Int) -> Int = {(left, right) in left * right }

let divide : (Int, Int) -> Int = {(left, right) in left / right }

func mathOp(left : Int, right : Int, op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}

// test for basic operation
print("Testings for basic operation")
print(mathOp(1, right: 2, op: add))
print(mathOp(1, right: 2, op: subtract))
print(mathOp(1, right: 2, op: multiply))
print(mathOp(1, right: 2, op: divide))
print()


// use array to represent points
func addNums(nums: [Int]) -> Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}

func mulNums(nums: [Int]) -> Int {
    var sum = 0
    for num in nums {
        sum *= num
    }
    return sum
}

func count(nums: [Int]) -> Int {
    return nums.count
}

func avg(nums: [Int]) -> Int {
    return addNums(nums) / count(nums)
}

func mathOp2(nums: [Int], op : [Int] -> Int) -> Int {
    return op(nums)
}

// test array
let test = [1, 2, 3, 4]
print("Testings for using array")
print(addNums(test))
print(avg(test))
print(mathOp2(test, op: count))
print(mathOp2(test, op: mulNums))
print(mathOp2(test, op: count))
print(mathOp2(test, op: avg))
print()


// use Tuples to represent points
func add(p1:(x: Int, y: Int), p2: (x: Int, y: Int)) -> (Int, Int) {
    return (p1.x + p2.x,p1.y + p2.y)
}

func subtract(p1:(x: Int, y: Int), p2: (x: Int, y: Int)) -> (Int, Int) {
    return (p1.x - p2.x,p1.y - p2.y)
}

// Test for tuples points
let p1 = (1, 2), p2 = (3, 4)
print("Testings for using tuple")
print(add(p1, p2: p2))
print(subtract(p1, p2: p2))
print()


// use Dictionaries to represent points
func add(d1:[String: Int], d2: [String: Int]) -> [String: Int] {
    var result = [String: Int]()
    for (coord, _) in d1 {
        if d1[coord] != nil && d2[coord] != nil {
            result[coord] = d1[coord]! + d2[coord]!
        }
    }
    return result
}

func add(d1:[String: Double], d2: [String: Double]) -> [String: Double] {
    var result = [String: Double]()
    for (coord, _) in d1 {
        if d1[coord] != nil && d2[coord] != nil {
            result[coord] = d1[coord]! + d2[coord]!
        }
    }
    return result
}

func subtract(d1:[String: Int], d2: [String: Int]) -> [String: Int] {
    var result = [String: Int]()
    for (coord, _) in d1 {
        if d1[coord] != nil && d2[coord] != nil {
            result[coord] = d1[coord]! - d2[coord]!
        }
    }
    return result
}

func subtract(d1:[String: Double], d2: [String: Double]) -> [String: Double] {
    var result = [String: Double]()
    for (coord, _) in d1 {
        if d1[coord] != nil && d2[coord] != nil {
            result[coord] = d1[coord]! - d2[coord]!
        }
    }
    return result
}

// Test points that are using dictionaries
let d1 = ["x": 2, "y": 4], d2 = ["x": 3, "y": 1], missingX = ["y" : 1]
let missingY = ["x" : 6], double1 = ["x" : 2.2, "y" : 1.2], double2 = ["x" : 4.2, "y" : 1.1]
print("Testings for using dictionaries")
print(add(d1, d2: d2))
print(add(d2, d2: missingY))
print(add(d1, d2: missingX))
print(add(double1, d2: double2))




