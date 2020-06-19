import DummyKit
import XCTest

class DummyAdderTests : XCTestCase {

    public func testWorks() {
        let actualResult = DummyAdder().add(a: 1, b: 2)
        let expectedResult = 3
        XCTAssertEqual(expectedResult, actualResult)
    }

}
