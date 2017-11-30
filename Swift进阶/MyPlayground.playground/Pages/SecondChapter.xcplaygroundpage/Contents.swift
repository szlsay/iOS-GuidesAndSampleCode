//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

var mutableFibs = [1, 2, 3, 4, 5]
mutableFibs.append(6)

mutableFibs.append(contentsOf: [7, 8])

var x = [1, 2, 3]

//: [Next](@next)

// 错误的赋值
let a = NSMutableArray.init(array: [1, 2, 3])
let b: NSArray = a

a.insert(4, at: 3)

b

// 正确的赋值

let c = NSMutableArray(array: [1, 2, 3])
let d = c.copy() as! NSArray

c.insert(4, at: 3)

d


let array = [1, 3, 5, 7, 9 , 10, 12]
// 想要迭代数组
for x in array {
    x
}

// 想要迭代除第一个元素以外的数组其余部分？
for x in array.dropFirst(){
    x
}

// 想要迭代除最后5个元素以外的数组？
for x in array.dropLast(5) {
    x
}

// 想要列举数组中的元素和对应的下标？
for (num, element) in array.enumerated() {
    print((num, element))
}

// MARK: 不能执行
// 想要寻找一个指定元素的位置？
//if let idx = array.index{
//    someMatchingLogin($0)
//}

array.index(after: 4)


// 想要对数组中的所有元素进行变形？
array.map {
    $0 + 1
}

// 想要筛选出符合某个标准的元素？
array.filter { item -> Bool in
    item > 5
}


var array1: Array = [1, 2, 3]

array1.isEmpty ? nil : array1[0]

array1.first
array1.last

array1.removeAll()

array1.isEmpty ? nil : array1[0]

array1.first
array1.last

// 数组为空时，下面方法会崩溃😖
//array1.removeLast()
//array1.removeFirst()

// 👍：数组为空时，不执行任何操作，直接返回nil。数组不为空时删除最后一个元素并返回它
array1.popLast()
array1



// MARK: 数组变形






