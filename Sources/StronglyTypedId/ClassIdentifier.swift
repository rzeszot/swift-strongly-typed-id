import Foundation

open class ClassIdentifier: RawRepresentable, Hashable, Equatable, Codable, ExpressibleByStringLiteral {
    public let rawValue: String

    required public init(rawValue: String) {
        self.rawValue = rawValue
    }

    // MARK: - Codable

    public required convenience init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)

        self.init(rawValue: value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }

    // MARK: - ExpressibleByStringLiteral

    public required convenience init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
}
