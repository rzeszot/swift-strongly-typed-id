import Foundation
import Identifier

struct Tiger {
    typealias ID = Identifier<Tiger, String>

    let id: ID
    let name: String
}

extension Tiger {
    static var foo: Tiger {
        Tiger(id: "catid", name: "Bar")
    }
}
