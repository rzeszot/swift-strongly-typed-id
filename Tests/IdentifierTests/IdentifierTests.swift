import XCTest

final class IdentifierTests: XCTestCase {

    func test_StringConvertible_WhenString() {
        let sut = "api/\(Cat.ID("12345"))/hello"
        XCTAssertEqual(sut, "api/12345/hello")
    }

    func test_StringConvertible_WhenInt() {
        let sut = "api/\(Dog.ID(12345))/hello"
        XCTAssertEqual(sut, "api/12345/hello")
    }

    // MARK: -

    func test_CVarArg() {
        let sut = String(format: "api/%@/hello", Cat.ID("12345"))
        XCTAssertEqual(sut, "api/12345/hello")
    }

    // MARK: -

    func test_Decodable() throws {
        let json = """
            {
                "id" : "6789",
                "name" : "Foo"
            }
            """
        let sut = try JSONDecoder().decode(Cat.self, from: json.data(using: .utf8)!)

        XCTAssertEqual(sut.id, Cat.ID("6789"))
    }

    func test_Encodable() throws {
        let cat = Cat(id: "456", name: "Foo")
        let sut = try JSONEncoder().encode(cat)

        XCTAssertEqual(String(data: sut, encoding: .utf8), """
            {"id":"456","name":"Foo"}
            """)
    }

    // MARK: -

    func test_Equatable() {
        let a = Cat.ID("123")
        let b = Cat.ID("123")
        let c = Cat.ID("456")

        XCTAssertEqual(a, b)
        XCTAssertNotEqual(a, c)
    }

    // MARK: - Hashable

    func test_Hashable() {
        let sut = Cat.ID("123")
        XCTAssertEqual(hash(of: sut), hash(of: "123"))
    }

    private func hash<T: Hashable>(of object: T) -> Int {
        var hasher = Hasher()
        object.hash(into: &hasher)
        return hasher.finalize()
    }

    // MARK: -

    func test_StringLiteral() {
        let sut: Cat.ID = "123"
        XCTAssertEqual(String(sut), String("123"))
    }

    func test_IntLiteral() {
        let sut: Dog.ID = 123
        XCTAssertEqual(Int(sut), Int(123))
    }

    // MARK: -

    func test_ExplicitConvertion() {
        let sut = Cat.ID(Tiger.ID("123"))
        XCTAssertEqual(String(sut), "123")
    }

}
