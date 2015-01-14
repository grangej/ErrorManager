//
//  ErrorManagerTests.swift
//  ErrorManagerTests
//
//  Created by John Grange on 1/13/15.
//  Copyright (c) 2015 Y Media Labs. All rights reserved.
//

import UIKit
import XCTest
import ErrorManager

public enum ErrorCodes: Int, ErrorCodeProtocal {
    
    case TestCode1 = 1
    case TestCode2 = 2
    
    public var values : ErrorCode {
        
        get {
            
            switch self{
                
            case .TestCode1:
                return ErrorCode(
                    code: self.rawValue,
                    localizedDescription: "Test localDesc 1",
                    localizedRecoverySuggestion: "Test Recovery Suggestion 1",
                    localizedFailureReason: "Test Failure Rease 1",
                    localizedRecoveryOptions: nil)
            case .TestCode2:
                return ErrorCode(
                    code: self.rawValue,
                    localizedDescription: "Test Error code 2",
                    localizedRecoverySuggestion: nil,
                    localizedFailureReason: nil,
                    localizedRecoveryOptions: nil)
            
            }
            
        }
    }
    
    public var domain : String {
        get {
            return "com.test.domain"
        }
        
    }
    
}

class ErrorManagerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateErrorWithCode() {
        // This is an example of a functional test case.
        
        var error: NSError = ErrorManager.errorForErroCode(ErrorCodes.TestCode2)
        
        XCTAssertNotNil(error, "Error should not be nil")
        
        
        XCTAssertEqual(error.localizedDescription, ErrorCodes.TestCode1.values.localizedDescription!, "Localized Descriptions should be equal")
        
        XCTAssertEqual(error.code, ErrorCodes.TestCode1.rawValue, "Error Codes should be equal!")
        
        XCTAssertEqual(error.domain, ErrorCodes.TestCode1.domain, "Error domains should be equal")
        
        XCTAssertEqual(error.localizedRecoverySuggestion!, ErrorCodes.TestCode1.values.localizedRecoverySuggestion!, "Error recovery suggestions should be the same")
        
        XCTAssertEqual(error.localizedFailureReason!, ErrorCodes.TestCode1.values.localizedFailureReason!, "Error failure reason should be the same")
        
    }
    
    func testCreateCustomError() {
        
        let desc: String = "Custom error"
        
        let domain: String = "com.test.domain"
        
        let code: Int = 3
        
        var error: NSError = ErrorManager.errorWithCode(code, domain: domain, localizedDescription: desc, localizedRecoverySuggestion: nil, localizedFailureReason: nil, localizedRecoveryOptions: nil)
        
        XCTAssertNotNil(error, "Error should not be nil")
        
        XCTAssertEqual(error.localizedDescription, desc, "Error descrptions should be equal")
        
        XCTAssertEqual(error.code, code, "Error codes should be equal")
        
        XCTAssertEqual(error.domain, domain, "Error domains should be equal")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
