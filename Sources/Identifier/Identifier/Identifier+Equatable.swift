import Foundation

extension Identifier: Equatable where RawValue: Equatable {
    public static func == (lhs: Identifier, rhs: Identifier) -> Bool {
        lhs.value == rhs.value
    }
}
