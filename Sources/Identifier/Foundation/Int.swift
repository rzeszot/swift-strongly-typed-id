import Foundation

extension Int {
    public init<T>(_ identifier: Identifier<T, Int>) {
        self = identifier.value
    }
}
