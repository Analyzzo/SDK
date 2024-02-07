//
//  File.swift
//  
//
//

import Foundation
import Analyzzo

@objc(TournamentSDK)
public class TournamentSDK : NSObject {
    @objc public init(some:String) {
        Analyzzo.setup(catkey: some)
    }
}
