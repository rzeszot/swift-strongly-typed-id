import XCTest

final class EndToEndTests: XCTestCase {

    func test_types() {
        func take(cat id: Cat.ID) {  }

        take(cat: Cat.foo.id)
//        take(cat: Dog.foo.id)
//        take(cat: Tiger.foo.id)
    }

}
