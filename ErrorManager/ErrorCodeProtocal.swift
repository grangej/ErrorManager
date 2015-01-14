//
//  ErrorCodeProtocal.swift
//  ErrorManager
//
//  Created by John Grange on 1/13/15.
//  Copyright (c) 2015 Y Media Labs. All rights reserved.
//

import Foundation


public struct ErrorCode {
    
    public let code: Int
    public let localizedDescription: String?
    public let localizedRecoverySuggestion: String?
    public let localizedFailureReason: String?
    public let localizedRecoveryOptions: [AnyObject]?
    
    public init(code: Int, localizedDescription: String?, localizedRecoverySuggestion: String?, localizedFailureReason: String?, localizedRecoveryOptions: [AnyObject]?){
        
        self.code = code
        self.localizedDescription = localizedDescription
        self.localizedFailureReason = localizedFailureReason
        self.localizedRecoveryOptions = localizedRecoveryOptions
        self.localizedRecoverySuggestion = localizedRecoverySuggestion
    }
}

public protocol ErrorCodeProtocal {
    
    var values: ErrorCode { get }
    
    var domain: String { get }
}
