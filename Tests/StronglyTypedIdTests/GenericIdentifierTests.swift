import XCTest
import StronglyTypedId

final class GenericIdentifierTests: XCTestCase {

    func test_bee() {
        func take(bee id: Bee.Id) {  }

        take(bee: Bee.foo.id)
//        take(bee: Wasp.foo.id)
    }

    func test_wasp() {
        func take(wasp id: Wasp.Id) {  }

        take(wasp: Wasp.foo.id)
//        take(wasp: Bee.foo.id)
    }

}
