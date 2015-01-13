//
//  ErrorCodeProtocal.swift
//  ErrorManager
//
//  Created by John Grange on 1/13/15.
//  Copyright (c) 2015 Y Media Labs. All rights reserved.
//

import Foundation


public struct ErrorCode {
        let code: Int,
        localizedDescription: String?,
        localizedRecoverySuggestion: String?,
        localizedFailureReason: String?,
        localizedRecoveryOptions: String?
}

public protocol ErrorCodeProtocal {
    
    var values: ErrorCode { get }
    
    var domain: String { get }
}
