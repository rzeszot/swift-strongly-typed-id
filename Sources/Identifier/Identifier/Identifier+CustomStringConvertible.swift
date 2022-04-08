import Foundation

extension Identifier: CustomStringConvertible where RawValue: CustomStringConvertible {
    public var description: String {
        value.description
    }
}
