import Foundation

extension UUID {
    public init<T>(_ identifier: Identifier<T, UUID>) {
        self = identifier.value
    }
}
