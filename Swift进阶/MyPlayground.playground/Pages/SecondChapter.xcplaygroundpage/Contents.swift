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
let fibs = [1, 2, 3, 5]
var squared:[Int] = []
for fib in fibs {
    squared.append(fib * fib)
}
squared

let squares = fibs.map { $0 * $0}
squares

let squares1 = fibs.map { (fib) -> Int in
    return fib * fib
}

squares1


var age = [1, 23, 34, 12, 67, 21, 100, 4]
age.contains(67)
age.contains(87)

age.sort{(number0, number1) -> Bool in
    number0 < number1
}


var students = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
students.index(of: "Kofi")
students.sort()
students.index(of: "Kofi")

let names = ["Paula", "Elena", "Zoe"]
var lastNameEndingInA: String?
for name in names.reversed() where name.hasSuffix("a") {
     lastNameEndingInA = name
//    break
}

lastNameEndingInA

extension Sequence {
    func last(where predicate: (Iterator.Element) -> Bool ) -> Iterator.Element? {
        for elememt in reversed() where predicate(elememt) {
            return elememt
        }
        return nil
    }
}


let match = names.last{ $0.hasSuffix("a")}
match

// 可变和带有状态的闭包

array.map { item in
    item
}

extension Array{
    
    func accumulate<Result>(_ initialResult: Result, _ nextPartialResult:(Result, Element) -> Result) -> [Result] {
        var running = initialResult
        return map{ next in
            running = nextPartialResult(running, next)
            return running
        }
    }
}


[1, 2, 3, 4].accumulate(0, +)


// Filter

var nums = [1, 3, 5, 3, 4, 6, 7, 8]

var numFilter = nums.filter { num in
    num % 2 == 0
}

numFilter

print((1..<10).map {$0 * $0}.filter { $0 % 2 == 0})

//extension Array{
//    func filter(_ isIncluded: (Element) throws -> Bool) rethrows -> [Element] {
//        var result:[Element] = []
//        for x in self where isIncluded(x) {
//            result.append(x)
//        }
//        return result
//    }
//}
nums

// 性能较差，filter会创建一个全新的数组，并且会对数组中的每个元素都进行操作。
print(nums.filter {  $0 % 3 == 0}.count > 0)
nums

// 👍，contains(where:)不会为了计数而创建一整个全新的数组，并且一旦匹配了第一个元素，就将提前退出
print(nums.contains{ $0 % 3 == 0})

// ??? 为啥遍历多了一次

extension Sequence{
    public func all(matching predicate: (Iterator.Element) -> Bool) -> Bool{
        return !contains(where: {
            !predicate($0)
        })
    }
}

let evenNums = nums.filter { $0 % 2 == 0}

evenNums

evenNums.all {
    $0 % 2 == 0
}

// Reduce
// map和filter都作用在一个数组上，并产生另一个新的、经过修改的数组。

var total = 0

fibs

for num in fibs{
    total = total + num
}

total


let sum = fibs.reduce(0) {total1, num in
    total1 + num
}

let sum1 = fibs.reduce(0, +)

fibs.reduce(" ") { str, num in
    str + " \(num)"
}

//call can throw but is not marked with 'try'
//extension Array{
//    func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) rethrows -> Result {
//        var result = initialResult
//        for x in self {
//            result = nextPartialResult(result, x)
//        }
//        return result
//    }
//}


// flatMap

//func extractLinks(markdownFile: String) -> [URL]
//let markdownFiles: [String] = ["34", "23", "st"]
//let nestedLinks = markdownFiles.map(extractLinks)
//let links = nestedLinks.joined()

//extension Array{
//
//    func flatMap<T>(_ transform: (Element)  -> [T]) -> [T] {
//        var result:[T] = []
//        for x in self {
//            result.append(contentsOf: transform(x))
//        }
//        return result
//    }
//}

let suits = ["♠", "♥", "♣", ""]
let ranks = ["J", "Q", "K", "A"]

let result1 = suits.flatMap { suit in
    ranks.map{
        rank in (suit, rank)
    }
}

// 使用forEach进行迭代
for element in [1, 2, 3] {
    print(element)
}

[1, 2, 3].forEach {
    print($0)
}


[(1, 3), (2, "3"), (3, "4")].forEach {
    print($0)
}

extension Array where Element: Equatable {
    func index(of element: Element) -> Int? {
        for idx in self.indices where self[idx] == element {
            return idx
        }
        return nil
    }
}

// 不能直接将where语句加入到forEach中，可以使用filter来重写这段代码
// 错误代码↓
//extension Array where Element: Equatable{
//    func index_foreach(of element:Element) -> Int？ {
//        self.indices.filter {idx in
//            self[idx] == element
//            }.forEach { idx in
//                return idx
//        }
//        return nil
//    }
//}

// return语句并不会终止循环，它做的仅仅是从闭包中返回。
(1..<10).forEach { number in
    print(number)
    if number > 2 {
        return
    }
}

// 建议大多情况下不要用forEach

/// 数据类型
// 切片

let slice = fibs[1..<fibs.endIndex]
type(of: fibs)
type(of: slice)



// 字典
enum Setting{
    case text(String)
    case int(Int)
    case bool(Bool)
}

let defaultSettings: [String: Setting] = [
    "Airplane Mode" : .bool(true),
    "Name": .text("My iPhone"),
]

defaultSettings["Name"]


var localizedSettings = defaultSettings
localizedSettings["Name"] = .text("Mein iPhone")
localizedSettings["Do Not Disturb"] = .bool(true)
localizedSettings

let oldName = localizedSettings.updateValue(.text("Hello iPhone"), forKey: "Name")
localizedSettings["Name"]
oldName

// 有用的字典扩展
extension Dictionary{
    mutating func merge<S>(_ other: S) where S:Sequence, S.Iterator.Element == (key:Key, value:Value) {
        for (k, v) in other{
            self[k] = v
        }
    }
}

var settings = defaultSettings
let overriddenSettings: [String: Setting] = ["Name":.text("Jane iPhone")]
settings.merge(overriddenSettings)
settings

extension Dictionary{
    init<S: Sequence>(_ sequence: S)
        where S.Iterator.Element == (key:Key, value:Value) {
            self = [:]
            self.merge(sequence)
        }
}

let defaultAlarms = (1..<5).map {
    (key:"Alarm \($0)", value: false)
}

extension Dictionary{
    func mapValues<NewValue>(transform:(Value) -> NewValue) -> [Key:NewValue] {
        return Dictionary<Key, NewValue>(map{ (key, value) in
            return (key, transform(value))
        })
    }
}

let settingsAsStrings = settings.mapValues { setting -> String in
    
    switch setting {
    case .text(let text): return text
    case .int(let number): return String(number)
    case .bool(let value): return String(value)
    }
}

settingsAsStrings

struct Person {
    var name: String
    var zipCode: Int
    var birthday: Data
}

extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool{
        return lhs.name == rhs.name &&
                lhs.zipCode == rhs.zipCode &&
                lhs.birthday == rhs.birthday
    }
}

extension Person: Hashable {
    var hashValue: Int {
        return name.hashValue ^ zipCode.hashValue ^ birthday.hashValue
    }
}


let person1 = Person.init(name: "S", zipCode: 3, birthday: Data.init())
let person2 = Person.init(name: "S", zipCode: 3, birthday: Data.init())
person1.hashValue
person2.hashValue
person1 == person2

// Set

// Set是标准库中唯一实现了SetAlgebra的类型

let naturals: Set = [1, 2, 3, 2]

naturals.count
naturals.contains(2)
naturals.contains(4)

// 集合代数


let iPods: Set = ["iPod1","iPod2","iPod3","iPod4","iPod5"]
let discontinuedIPods: Set = ["iPod2","iPod3"]
// 一个集合中求另一个集合的补集
let currentIPods: Set = iPods.subtracting(discontinuedIPods)

let touchscreen: Set = ["iPhone","iPod1","iPod2","iPad"]
// 两个集合的交集
let iPodsWithTouch = iPods.intersection(touchscreen)

var discontinued: Set = ["iBook", "Powerbook", "Power Mac"]
// 两个集合的并集
discontinued.formUnion(discontinuedIPods)

// 索引集合和字符集合

var indices = IndexSet()
indices.insert(integersIn: 1..<5)
indices.insert(integersIn: 11..<15)
indices
let evenIndices = indices.filter {
    $0 % 2 == 0
}

evenIndices

// 在闭包中使用集合
extension Sequence where Iterator.Element: Hashable {
    func unique() -> [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter{
            if seen.contains($0) {
                return false
            }else {
                seen.insert($0)
                return true
            }
        }
    }
}

[1,2,3,4,5,4,23,6,4,2,9].unique()

// 2.4 Range

let singleDigitNumbers = 0..<10
let lowercaseLetters = Character("a")...Character("z")


// 错误：ClosedRange<Character>类型不遵守Sequence协议
//for char in lowercaseLetters {
//
//}

singleDigitNumbers.map {
    $0 * $0
}



