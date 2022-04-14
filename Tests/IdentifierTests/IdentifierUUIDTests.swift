import Identifier
import XCTest

final class IdentifierUUIDTests: XCTestCase {

    func test_ValueConvertible() {
        let sut = Object.ID(UUID.bar)
        let result = UUID(sut)
        XCTAssertEqual(result, UUID.bar)
    }

    func test_StringConvertible() {
        let id = Object.ID(.foo)
        let sut = "api/\(id)/hello"
        XCTAssertEqual(sut, "api/00000000-0000-0000-0000-000000000000/hello")
    }

    func test_Decodable() throws {
        let json = """
            {
                "id" : "00000000-0000-0000-0000-000000000000",
                "name" : "Foo"
            }
            """
        let sut = try JSONDecoder().decode(Object.self, from: json.data(using: .utf8)!)

        XCTAssertEqual(sut.id, Object.ID(UUID.foo))
    }

    func test_Encodable() throws {
        let cat = Object(id: Object.ID(UUID.bar), name: "Foo")
        let sut = try JSONEncoder().encode(cat)

        XCTAssertEqual(String(data: sut, encoding: .utf8), """
            {"id":"00000000-0000-0000-0000-111111111111","name":"Foo"}
            """)
    }

    func test_Equatable() {
        let a = Object.ID(UUID.foo)
        let b = Object.ID(UUID.foo)
        let c = Object.ID(UUID.bar)

        XCTAssertEqual(a, b)
        XCTAssertNotEqual(a, c)
    }



    func test_Equatable_RawValue() {
        let sut = Object.ID(UUID.bar)
        XCTAssertTrue(sut == UUID.bar)
    }

    func test_Hashable() {
        let sut = Object.ID(UUID.foo)
        XCTAssertEqual(hash(of: sut), hash(of: UUID.foo))
    }

    private func hash<T: Hashable>(of object: T) -> Int {
        var hasher = Hasher()
        object.hash(into: &hasher)
        return hasher.finalize()
    }

    // MARK: -

    struct Object: Codable {
        typealias ID = Identifier<Object, UUID>

        let id: ID
        let name: String
    }

}

private extension UUID {
    static let foo = UUID(uuidString: "00000000-0000-0000-0000-000000000000")!
    static let bar = UUID(uuidString: "00000000-0000-0000-0000-111111111111")!
}
