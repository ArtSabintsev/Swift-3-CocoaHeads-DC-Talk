import Foundation

/**
 Label closure parameters and tuple members 
 */

// Not Prefered
typealias aBadPersonTuple = (String, Int)

let badTuple = aBadPersonTuple("Arthur", 30)
badTuple.0
badTuple.1

// Prefered
typealias aGoodPersonTuple = (name: String, age: Int)

let goodTuple = aGoodPersonTuple(name: "Arthur", age: 30)
goodTuple.name
goodTuple.age


/* --- */

// Not Prefered
typealias aBadClosure = (String, Int) -> ()

func aBadFunc(completion handler: aBadClosure) {}

//aBadFunc

// Prefered
typealias aGoodClosure = (name: String, age: Int) -> ()

func aGoodFunc(completion handler: aGoodClosure) {}

//aGoodFunc
