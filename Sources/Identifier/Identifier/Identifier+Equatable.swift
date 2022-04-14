import Foundation

extension Identifier: Equatable where RawValue: Equatable {
    public static func == (lhs: Identifier, rhs: Identifier) -> Bool {
        lhs.value == rhs.value
    }

    public static func == (lhs: Identifier, rhs: RawValue) -> Bool {
        lhs.value == rhs
    }
}
