import Foundation
import StronglyTypedId

struct Wasp {
    typealias Id = GenericIdentifier<Wasp>

    let id: Id
    let name: String
}

extension Wasp {
    static var foo: Wasp {
        Wasp(id: "1", name: "Foo")
    }
}
