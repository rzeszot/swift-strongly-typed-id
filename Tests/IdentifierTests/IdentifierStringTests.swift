import Identifier
import XCTest

final class IdentifierStringTests: XCTestCase {

    func test_ValueConvertible() {
        let sut = Object.ID("12345")
        let result = String(sut)
        XCTAssertEqual(result, "12345")
    }

    func test_StringConvertible() {
        let id = Object.ID("12345")
        let sut = "api/\(id)/hello"
        XCTAssertEqual(sut, "api/12345/hello")
    }

    func test_Decodable() throws {
        let json = """
            {
                "id" : "6789",
                "name" : "Foo"
            }
            """
        let sut = try JSONDecoder().decode(Object.self, from: json.data(using: .utf8)!)

        XCTAssertEqual(sut.id, Object.ID("6789"))
    }

    func test_Encodable() throws {
        let cat = Object(id: "456", name: "Foo")
        let sut = try JSONEncoder().encode(cat)

        XCTAssertEqual(String(data: sut, encoding: .utf8), """
            {"id":"456","name":"Foo"}
            """)
    }

    func test_Equatable() {
        let a = Object.ID("123")
        let b = Object.ID("123")
        let c = Object.ID("456")

        XCTAssertEqual(a, b)
        XCTAssertNotEqual(a, c)
    }

    func test_Equatable_RawValue() {
        let sut = Object.ID("123")
        XCTAssertTrue(sut == String("123"))
    }

    func test_Hashable() {
        let sut = Object.ID("123")
        XCTAssertEqual(hash(of: sut), hash(of: "123"))
    }

    private func hash<T: Hashable>(of object: T) -> Int {
        var hasher = Hasher()
        object.hash(into: &hasher)
        return hasher.finalize()
    }

    func test_StringLiteral() {
        let sut: Object.ID = "123"
        XCTAssertEqual(String(sut), String("123"))
    }

    // MARK: -

    struct Object: Codable {
        typealias ID = Identifier<Object, String>

        let id: ID
        let name: String
    }

}
