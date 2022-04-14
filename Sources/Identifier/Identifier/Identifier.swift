import Foundation

public struct Identifier<Distriminator, RawValue> {
    internal let value: RawValue

    public init(_ value: RawValue) {
        self.value = value
    }
}

extension Identifier {
    public init<T>(_ other: Identifier<T, RawValue>) {
        self.init(other.value)
    }
}
