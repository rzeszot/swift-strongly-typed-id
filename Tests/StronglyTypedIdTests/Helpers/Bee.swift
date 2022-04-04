import Foundation
import StronglyTypedId

struct Bee {
    typealias Id = GenericIdentifier<Bee>

    let id: Id
    let name: String
}

extension Bee {
    static var foo: Bee {
        Bee(id: "1", name: "Foo")
    }
}
