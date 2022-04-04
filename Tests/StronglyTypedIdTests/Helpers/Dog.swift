import Foundation
import StronglyTypedId

struct Dog {
    final class Id: ClassIdentifier {}

    let id: Id
    let name: String
}

extension Dog {
    static var foo: Dog {
        Dog(id: "1", name: "Foo")
    }
}
