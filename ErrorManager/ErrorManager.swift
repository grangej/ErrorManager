//
//  ErrorManager.swift
//  ErrorManager
//
//  Created by John Grange on 1/13/15.
//  Copyright (c) 2015 Y Media Labs. All rights reserved.
//

import Foundation

public class ErrorManager {
    
    
    public class func errorForErroCode(errorCode: ErrorCodeProtocal) -> NSError {
        
        return ErrorManager.errorWithCode(errorCode.values.code, domain: errorCode.domain, localizedDescription: errorCode.values.localizedDescription, localizedRecoverySuggestion: errorCode.values.localizedRecoverySuggestion, localizedFailureReason: errorCode.values.localizedFailureReason, localizedRecoveryOptions: errorCode.values.localizedRecoveryOptions)
        
    }
    
    public class func errorWithCode(code: Int, domain: String, localizedDescription: String?, localizedRecoverySuggestion: String?, localizedFailureReason: String?, localizedRecoveryOptions: String?) -> NSError {
        
        var userInfo: [NSString : String] = [NSString : String]()
        
        if let localizedDescriptionStr = localizedDescription {
            userInfo[NSLocalizedDescriptionKey] = localizedDescriptionStr
        }
        
        if let localizedRecoverySuggestionStr = localizedRecoverySuggestion {
            
            userInfo[NSLocalizedRecoverySuggestionErrorKey] = localizedRecoverySuggestionStr
        }
        
        if let localizedFailureReasonStr = localizedFailureReason {
            
            userInfo[NSLocalizedFailureReasonErrorKey] = localizedFailureReasonStr
        }
        
        if let localizedRecoveryOptionsStr = localizedRecoveryOptions {
            
            userInfo[NSLocalizedRecoveryOptionsErrorKey] = localizedRecoveryOptionsStr
        }
        
        let errorMessage: NSError = NSError(domain: domain, code: code, userInfo: userInfo)
        
        return errorMessage
    }
}