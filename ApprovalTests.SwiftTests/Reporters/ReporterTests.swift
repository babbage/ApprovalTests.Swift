@testable import ApprovalTests_Swift
import XCTest

final class ReporterTests: XCTestCase {

    func test_firstWorking() throws {
        let reporter1 = TestReporter(success: false)
        let reporter2 = TestReporter(success: true)
        let reporter3 = TestReporter(success: true)

        let success = FirstWorkingReporter(reporter1, reporter2, reporter3).report(received: "r.text", approved: "a.text")

        XCTAssertTrue(success)
        XCTAssertEqual(reporter1.approved, "a.text")
        XCTAssertEqual(reporter2.approved, "a.text")
        XCTAssertEqual(reporter3.approved, "")
    }
}