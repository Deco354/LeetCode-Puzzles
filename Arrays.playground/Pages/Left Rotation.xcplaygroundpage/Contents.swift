//: [Previous](@previous)

import Foundation

// Swift API Left Rotation

//func rotLeft(a: [Int], d: Int) -> [Int] {
//    var result = a
//    result.removeFirst(d)
//    result.append(contentsOf: a.prefix(d))
//    return result
//}

// Manual Left Rotation
func rotLeft(a: [Int], d: Int) -> [Int] {
    var result = [Int]()
    for i in d..<a.count {
        result.append(a[i])
    }
    for j in 0..<d {
        result.append(a[j])
    }
    return result
}

rotLeft(a: [1,2,3,4,5], d: 2)
