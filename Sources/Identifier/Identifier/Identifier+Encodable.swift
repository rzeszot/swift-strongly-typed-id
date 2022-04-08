import Foundation

extension Identifier: Encodable where RawValue: Encodable {
    public func encode(to encoder: Encoder) throws {
        try value.encode(to: encoder)
    }
}
