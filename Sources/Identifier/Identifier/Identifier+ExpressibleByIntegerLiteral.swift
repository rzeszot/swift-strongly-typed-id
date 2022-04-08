import Foundation

extension Identifier: ExpressibleByIntegerLiteral where RawValue == IntegerLiteralType {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(value)
    }
}
