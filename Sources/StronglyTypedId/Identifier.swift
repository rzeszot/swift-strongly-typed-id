import Foundation

open class Identifier: Equatable, Codable, ExpressibleByStringLiteral {

    fileprivate let value: String

    required public init(_ value: String) {
        self.value = value
    }

    // MARK: - Equatable

    public static func == (lhs: Identifier, rhs: Identifier) -> Bool {
        lhs.value == rhs.value
    }

    // MARK: - Codable

    public required convenience init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)

        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }

    // MARK: - ExpressibleByStringLiteral

    public required convenience init(stringLiteral value: String) {
        self.init(value)
    }
}

extension String {
    public init(_ identifier: Identifier) {
        self = identifier.value
    }
}
