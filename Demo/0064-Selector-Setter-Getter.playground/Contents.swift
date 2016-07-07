import Foundation

/**
 SE-0064

 Referencing the Objective-C selector of property getters and setters
 */

@objc class ObjectiveCPerson: NSObject {

    dynamic var name: String

    override init() {
        self.name = "Arthur"

        super.init()

    }

}

struct S {

    static func person() {
        let person = ObjectiveCPerson()

        _ = #selector(getter: person.name)
        _ = #selector(setter: person.name)

    }

}

S.person()
