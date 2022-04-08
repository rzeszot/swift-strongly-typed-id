import Foundation

extension Identifier: Decodable where RawValue: Decodable {
    public init(from decoder: Decoder) throws {
        self.init(try RawValue(from: decoder))
    }
}
