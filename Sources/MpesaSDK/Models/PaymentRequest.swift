//
//  PaymentRequest.swift
//  
//
//  Created by ALgy Aly on 14/01/22.
//

import Foundation

/// Struct with all the fields required to perfom a Customer-to-Business (C2B) or Business-to-Customer (B2C) transaction Payment to M-Pesa API
/// @transactionReference: This is the reference of the transaction for the customer or business making the transaction. This can be a smartcard number for a TV subscription or a reference number of a utility bill
/// @customerMSISDN: MSISDN of the customer for the transaction
/// @amount: The amount for the transaction
/// @thirdPartyReference: This is the unique reference of the third party system. When there are queries about transactions, this will usually be used to track a transaction
/// @serviceProviderCode: Shortcode of the business where funds will be credited to

open struct PaymentRequest: Encodable {
    let transactionReference: String
    let customerMSISDN      : String
    let amount              : String
    let thirdPartyReference : String
    let serviceProviderCode : String
    
    enum CodingKeys: String, CodingKey {
        case transactionReference = "input_TransactionReference"
        case customerMSISDN       = "input_CustomerMSISDN"
        case amount               = "input_Amount"
        case thirdPartyReference  = "input_ThirdPartyReference"
        case serviceProviderCode  = "input_ServiceProviderCode"
    }
}
