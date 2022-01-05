import Foundation
import StronglyTypedId

struct Person {
  typealias Id = Identifier<Person>

  let id: Id
  let name: String
}

extension Person {
  static var bar: Person {
    Person(id: "1", name: "Bar")
  }
}
