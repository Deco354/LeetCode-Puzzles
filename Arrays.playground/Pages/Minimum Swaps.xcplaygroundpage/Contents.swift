//: [Previous](@previous)

import Foundation

func minimumSwaps(arr: [Int]) -> Int {
    var swapCount = 0
    var array = arr
    for i in 0..<array.count {
        while array[i] != i + 1 {
            array.swapAt(i,array[i] - 1)
            swapCount += 1
        }
    }
    return swapCount
}

//minimumSwaps(arr: [7, 1, 3, 2, 4, 5, 6])
let testArray = "2 31 1 38 29 5 44 6 12 18 39 9 48 49 13 11 7 27 14 33 50 21 46 23 15 26 8 47 40 3 32 22 34 42 16 41 24 10 4 28 36 30 37 35 20 17 45 43 25 19".components(separatedBy: " ").map { Int($0)! }
minimumSwaps(arr: testArray)
