import Foundation

extension Identifier: ExpressibleByUnicodeScalarLiteral where RawValue == String {
    public init(unicodeScalarLiteral value: String) {
        self.init(value)
    }
}

extension Identifier: ExpressibleByExtendedGraphemeClusterLiteral where RawValue == String {
    public init(extendedGraphemeClusterLiteral value: String) {
        self.init(value)
    }
}

extension Identifier: ExpressibleByStringLiteral where RawValue == String {
    public init(stringLiteral value: String) {
        self.init(value)
    }
}
