import Identifier
import XCTest

final class EndToEndTests: XCTestCase {

    func test_ExplicitConversion() {
        let first = First.ID("123")
        let second = Second.ID(first)

        XCTAssertEqual(second, Second.ID("123"))
    }

    // MARK: -

    struct First {
        typealias ID = Identifier<First, String>
    }

    struct Second {
        typealias ID = Identifier<Second, String>
    }

}
