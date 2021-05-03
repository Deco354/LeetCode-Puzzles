 //: [Previous](@previous)

import Foundation

// Complete the hourglassSum function below.
func hourglassSum(arr: [[Int]]) -> Int {
    var currentHourGlassSum = 0
    var maxHourGlassSum = Int.min
    for y in 1..<arr.count - 1 { //later: adapt for any size
        for x in 1..<arr[y].count - 1 {
            currentHourGlassSum = arr[y-1][x-1] + arr[y-1][x] + arr[y-1][x+1]
            currentHourGlassSum += arr[y][x]
            currentHourGlassSum += arr[y+1][x-1] + arr[y+1][x] + arr[y+1][x+1]
            maxHourGlassSum = max(currentHourGlassSum, maxHourGlassSum)
            print(currentHourGlassSum)
        }
    }
    return maxHourGlassSum
}

let testGrid: [[Int]] = [
    [-9,-9,-9,1,1,1],
    [0,-9,0,4,3,2],
    [-9,-9,-9,1,2,3],
    [0,0,8,6,6,0],
    [0,0,0,-2,0,0],
    [0,0,1,2,4,0]
]

hourglassSum(arr: testGrid)


