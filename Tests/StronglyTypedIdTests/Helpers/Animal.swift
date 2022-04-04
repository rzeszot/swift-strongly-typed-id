import Foundation
import StronglyTypedId

struct Animal {
    typealias Id = GenericIdentifier<Animal>

    let id: Id
    let name: String
}

extension Animal {
    static var foo: Animal {
        Animal(id: "1", name: "Foo")
    }
}
