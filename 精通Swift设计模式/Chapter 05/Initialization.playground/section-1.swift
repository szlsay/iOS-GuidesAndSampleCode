//: Playground - noun: a place where people can play

import Foundation

// 1.如果实现是NSCopying 协议，需要重写copy方法
class Sum : NSObject , NSCopying{
    var resultsCache: [[Int]];
    var firstValue:Int;
    var secondValue:Int;
    
    init(first:Int, second:Int) {
        
        resultsCache = [[Int]].init(repeating: [Int].init(repeating: 0, count: 10), count: 10);
        for i in 0..<10 {
            for j in 0..<10 {
                resultsCache[i][j] = i*10 + j;
            }
        }
        firstValue = first;
        secondValue = second;
    }
    
    private init(first:Int, second:Int, cache:[[Int]]) {
        firstValue = first;
        secondValue = second;
        resultsCache = cache;
    }
    
    var Result:Int {
        get {
            return firstValue < resultsCache.count
                && secondValue < resultsCache[firstValue].count
                ? resultsCache[firstValue][secondValue]
                : firstValue + secondValue;
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Sum.init(first: self.firstValue, second: self.secondValue, cache: self.resultsCache)
    }
}

var prototype = Sum(first:3, second:9);
var clone = prototype;
var calc1 = prototype.Result;
clone.firstValue = 3;
clone.secondValue = 8;
var calc2 = clone.Result;
print("Calc1: \(calc1) Calc2: \(calc2)");

print("\(prototype)");
print("\(clone)");

var cloneCopy = clone.copy()
print("\(cloneCopy)");

