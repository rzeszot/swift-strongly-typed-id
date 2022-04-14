import Foundation

extension Identifier: Hashable where RawValue: Hashable {
    public func hash(into hasher: inout Hasher) {
        value.hash(into: &hasher)
    }
}
