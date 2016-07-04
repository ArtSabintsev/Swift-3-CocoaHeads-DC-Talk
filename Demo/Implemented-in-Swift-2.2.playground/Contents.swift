import Foundation

/**
 SE-0001
 
 Keywords can be used as argument labels
 */

func keywordFunc(in: String, defer: String, repeat: Bool, typealias: Int) {

}

keywordFunc(in: "String A", defer: "String B", repeat: true, typealias: 5)

/**
 SE-0011
 
 New keyword: associatedtype
 Replaces `typealias` inside protocol declarations
 */

protocol Vehicle {
    associatedtype Manufacturer

    func createdBy(manufacturer: Manufacturer)
}

class Car: Vehicle {

    typealias Manufacturer = String

    func createdBy(manufacturer: Manufacturer) {

    }

}


/**
 SE-0015
 
 Tuple Comparison Operators
 
 Automatically generates the following functions for each tuple
 
 @warn_unused_result
 public func == <A: Equatable, B: Equatable, C: Equatable>(lhs: (A,B,C), rhs: (A,B,C)) -> Bool {
    return lhs.0 == rhs.0 && lhs.1 == rhs.1 && lhs.2 == rhs.2
 }

 @warn_unused_result
 public func != <A: Equatable, B: Equatable, C: Equatable>(lhs: (A,B,C), rhs: (A,B,C)) -> Bool {
    return lhs.0 != rhs.0 || lhs.1 != rhs.1 || lhs.2 != rhs.2
 }

 @warn_unused_result
 public func < <A: Comparable, B: Comparable, C: Comparable>(lhs: (A,B,C), rhs: (A,B,C)) -> Bool {
    if lhs.0 != rhs.0 { return lhs.0 < rhs.0 }
    if lhs.1 != rhs.1 { return lhs.1 < rhs.1 }
    return lhs.2 < rhs.2
 }

 @warn_unused_result
    public func <= <A: Comparable, B: Comparable, C: Comparable>(lhs: (A,B,C), rhs: (A,B,C)) -> Bool {
    if lhs.0 != rhs.0 { return lhs.0 < rhs.0 }
    if lhs.1 != rhs.1 { return lhs.1 < rhs.1 }
    return lhs.2 <= rhs.2
 }

 @warn_unused_result
 public func > <A: Comparable, B: Comparable, C: Comparable>(lhs: (A,B,C), rhs: (A,B,C)) -> Bool {
    if lhs.0 != rhs.0 { return lhs.0 > rhs.0 }
    if lhs.1 != rhs.1 { return lhs.1 > rhs.1 }
    return lhs.2 > rhs.2
 }

 @warn_unused_result
 public func >= <A: Comparable, B: Comparable, C: Comparable>(lhs: (A,B,C), rhs: (A,B,C)) -> Bool {
    if lhs.0 != rhs.0 { return lhs.0 > rhs.0 }
    if lhs.1 != rhs.1 { return lhs.1 > rhs.1 }
    return lhs.2 >= rhs.2
 }
 */

typealias aTuple = (a: Int, b: Int, c: Int)
let firstTuple = aTuple(a: 1, b: 2, c: 3)
let secondTuple = aTuple(a: 1, b: 2, c: 3)
firstTuple.a == secondTuple.a
firstTuple.a <= secondTuple.b
firstTuple.a >= secondTuple.c


/**
 SE-0020
 
 Swift Version Build Configuration
 */

#if swift(>=3.0)
    print("Swift 3.0")
#elseif swift(>=2.3)
    print("Swift 2.3")
#else
    print("Swift 2.2")

#endif


/**
 SE-0022

 Use #selector() to reference objective-c methods instead of string literals
 */

class Class22 {

    private let notificationFired = "Notification Fired"

    func setup() {
        NotificationCenter.default().addObserver(self, selector: #selector(listener), name: notificationFired, object: nil)
    }

    @objc func listener(notification: Notification) {

    }

}

