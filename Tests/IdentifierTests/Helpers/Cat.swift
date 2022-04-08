import Foundation
import Identifier

struct Cat: Codable {
    typealias ID = Identifier<Cat, String>

    let id: ID
    let name: String
}

extension Cat {
    static var foo: Cat {
        Cat(id: "catid", name: "Foo")
    }
}
