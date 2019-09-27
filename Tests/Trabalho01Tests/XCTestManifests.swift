import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Trabalho01Tests.allTests),
    ]
}
#endif
