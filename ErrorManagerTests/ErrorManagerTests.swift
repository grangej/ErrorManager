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

enum ErrorCodes: Int, ErrorCodeProtocal {
    
    case TestCode1 = 1
    case TestCode2 = 2
    
    var values : ErrorCode {
        
        get {
            
            switch self{
                
            case .TestCode1:
                return ErrorCode(
                    code: self.rawValue,
                    localizedDescription: "Test Error code 1",
                    localizedRecoverySuggestion: nil,
                    localizedFailureReason: nil,
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
    
    var domain : String {
        
        return "com.test.domain"
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
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
