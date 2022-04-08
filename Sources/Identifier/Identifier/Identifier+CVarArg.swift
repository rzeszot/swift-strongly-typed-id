import Foundation

extension Identifier: CVarArg where RawValue: CVarArg {
    public var _cVarArgEncoding: [Int] {
        value._cVarArgEncoding
    }
}
