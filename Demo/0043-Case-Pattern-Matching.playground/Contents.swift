import UIKit

enum MyEnum {
    case Case1(Int,Float)
    case Case2(Float,Int)
}

let value: MyEnum = .Case2(2, 1)

switch value {

case let .Case1(x, 2), let .Case2(2, x):
    print(x)

case .Case1, .Case2:
    break
}
