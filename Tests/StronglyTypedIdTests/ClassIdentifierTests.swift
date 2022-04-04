import XCTest
import StronglyTypedId

final class ClassIdentifierTests: XCTestCase {

    func test_dog() {
        func take(dog id: Dog.Id) {  }

        take(dog: Dog.foo.id)
//        take(dog: Cat.foo.id)
    }

    func test_person() {
        func take(cat id: Cat.Id) {  }

        take(cat: Cat.foo.id)
//        take(cat: Dog.foo.id)
    }

}
