import Foundation

public struct Identifier<Distriminator, RawValue> {
    internal let value: RawValue

    public init(_ value: RawValue) {
        self.value = value
    }
}
