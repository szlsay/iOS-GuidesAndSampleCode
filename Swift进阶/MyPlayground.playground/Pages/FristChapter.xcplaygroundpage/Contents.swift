//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var someArray = [1, 2, 3]
let uhOh = someArray.withUnsafeBufferPointer { ptr in
    return ptr
}

uhOh.first
//uhOh[10]

let numbers = [1, 2, 3, 4, 5]
let sum = numbers.withUnsafeBufferPointer { buffer -> Int in
    var result = 0
    for i in stride(from: buffer.startIndex, to: buffer.endIndex, by: 2) {
        result += buffer[i]
    }
    return result
}
  // 'sum' == 9



