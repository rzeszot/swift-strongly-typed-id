import Foundation
import Identifier

struct Dog {
    typealias ID = Identifier<Dog, Int>

    let id: ID
    let name: String
}

extension Dog {
    static var foo: Dog {
        Dog(id: 1, name: "Foo")
    }
}
