import Foundation
import StronglyTypedId

struct Cat {
    final class Id: ClassIdentifier {}

    let id: Id
    let name: String
}

extension Cat {
    static var foo: Cat {
        Cat(id: "1", name: "Foo")
    }
}
