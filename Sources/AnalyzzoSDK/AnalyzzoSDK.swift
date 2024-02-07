//
//  File.swift
//  
//
//

import Foundation
import Analyzzo

@objc(AnalyzzoSDK)
public class AnalyzzoSDK : NSObject {
    @objc public init(some:String,path:String?  = nil) {
        Analyzzo.setup(catkey: some, path: path)
    }
}
