//
//  MpesaConfig.swift
//  
//
//  Created by ALgy Aly on 15/01/22.
//

import Foundation

public class MpesaConfig {
    let apiAddress  : String
    let apiKey      : String
    let publicKey   : String
    
    public init(apiAddress: String, apiKey: String, publicKey: String) {
        self.apiAddress = apiAddress
        self.apiKey     = apiKey
        self.publicKey  = publicKey
    }
}
