import Foundation

extension String {
    public init<T>(_ identifier: Identifier<T, String>) {
        self = identifier.value
    }
}
