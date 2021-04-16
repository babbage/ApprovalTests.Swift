import Foundation

class Options {
    private let reporter: ApprovalFailureReporter?

    public init() {
        self.reporter = nil
    }

    public init(_ reporter: ApprovalFailureReporter) {
        self.reporter = reporter
    }

    public func getReporter() -> ApprovalFailureReporter {
        return reporter ?? Approvals.getReporter()
    }

    public func withReporter(_ reporter: ApprovalFailureReporter) -> Options {
        return Options(reporter)
    }
}