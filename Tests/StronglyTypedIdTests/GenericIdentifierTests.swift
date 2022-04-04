import XCTest
import StronglyTypedId

final class GenericIdentifierTests: XCTestCase {

    func test_animal() {
        func take(animal id: Animal.Id) {  }

        take(animal: Animal.foo.id)
//        take(animal: Person.bar.id)
    }

    func test_person() {
        func take(person id: Person.Id) {  }

        take(person: Person.bar.id)
//        take(person: Animal.foo.id)
    }

}
