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
        
        var userInfo: [NSString : String] = [NSString : String]()
        
        if let localizedDescription = errorCode.values.localizedDescription {
            userInfo[NSLocalizedDescriptionKey] = localizedDescription
        }
        
        if let localizedRecoverySuggestion = errorCode.values.localizedRecoverySuggestion {
            
            userInfo[NSLocalizedRecoverySuggestionErrorKey] = localizedRecoverySuggestion
        }
        
        if let localizedFailureReason = errorCode.values.localizedFailureReason {
            
            userInfo[NSLocalizedFailureReasonErrorKey] = localizedFailureReason
        }
        
        if let localizedRecoveryOptions = errorCode.values.localizedRecoveryOptions {
            
            userInfo[NSLocalizedRecoveryOptionsErrorKey] = localizedRecoveryOptions
        }
        
        let errorMessage: NSError = NSError(domain: errorCode.domain, code: errorCode.values.code, userInfo: userInfo)
        
        
        return errorMessage
        
    }
}