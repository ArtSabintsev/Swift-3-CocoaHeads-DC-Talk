import Foundation

/**
 SE-0061
 
 Add Generic Result and Error Handling to autoreleasepool()
 
 New Definition of Autorelease
 
 public func autoreleasepool<Result>(_ body: @noescape () throws -> Result) rethrows -> Result
 */

enum MyErrorType: ErrorProtocol {
    case ExampleError
}

func contrivedFunction() {
    guard let _ = try? f() else {
        print("ERROR")
        return
    }

    print("SUCCESS")
}

func f() throws -> String {
    return try autoreleasepool({ () -> String in

        do {
            try t()
            return "SUCCESS"
        } catch _ {
            throw MyErrorType.ExampleError
        }

    })
}

func t() throws {
    throw MyErrorType.ExampleError
}

contrivedFunction()
