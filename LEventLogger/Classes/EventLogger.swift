//
//  EventLogger.swift
//  SleepSentry
//
//  Created by Selina on 23/5/2023.
//

import Foundation
import FirebaseAnalytics

public extension EventLogger {
    struct EventType: RawRepresentable, Hashable {
        public typealias RawValue = String
        
        public var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

public class EventLogger {
    private init() {}
    
    public class func log(_ type: EventType, parameters: [String: Any]? = nil) {
        Analytics.logEvent(type.rawValue, parameters: parameters)
    }
}
