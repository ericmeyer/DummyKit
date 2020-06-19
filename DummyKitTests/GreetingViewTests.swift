import XCTest
import UIKit

public class GreetingViewTests : XCTestCase {

    public func testLoadsTheControllerFromTheStoryboard() {
        let storyboard = UIStoryboard.init(name: "Test", bundle: Bundle.init(for: type(of: self)))
        let controller = storyboard.instantiateViewController(identifier: "GreetingViewController") as? GreetingViewController
        XCTAssertNotNil(storyboard)
        XCTAssertNotNil(controller)
    }

    public func testControllerHasAView() {
        let storyboard = UIStoryboard.init(name: "Test", bundle: Bundle.init(for: type(of: self)))
        let controller = storyboard.instantiateViewController(identifier: "GreetingViewController") as? GreetingViewController
        controller?.loadView()

        XCTAssertNotNil(controller?.greetingView)
    }

    public func testViewHasALabel() {
        let storyboard = UIStoryboard.init(name: "Test", bundle: Bundle.init(for: type(of: self)))
        let controller = storyboard.instantiateViewController(identifier: "GreetingViewController") as? GreetingViewController
        controller?.loadView()

        XCTAssertNotNil(controller?.greetingView)
        XCTAssertNotNil(controller?.greetingView.myLabel)
        XCTAssertEqual("Hello world", controller?.greetingView.myLabel.text)
    }


}
