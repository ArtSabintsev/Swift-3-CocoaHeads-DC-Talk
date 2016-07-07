import UIKit

/**
 SE-0039
 
 Modernizing Playground Literals
 */

//let color = 


struct Type {
    var x: Int
    func instanceMethod(y y: Int) -> Int {
        return x + y
    }
}

let f = Type.instanceMethod // f : (Type) -> (y: Int) -> Int
f(Type(x: 1))(y: 2)         // ==> 3