import XCTest
import StronglyTypedId

final class IdentifierTests: XCTestCase {

  func test_animal() {
    func take(animal id: Animal.Id) {  }

    let sut = Animal.foo
    take(animal: sut.id)
  }

  func test_person() {
    func take(person id: Person.Id) {  }

    let sut = Person.bar
    take(person: sut.id)
  }

}
