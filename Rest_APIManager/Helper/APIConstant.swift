//
//  APIConstant.swift
//  Rest_APIManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation
import UIKit

struct APIConstants {
    static let baseURL = "" // put your base url
    static let getCustomersEndpoint = "" // put your API end point
}

struct ConstantMessage {
    static let badRequest = "Bad Request: The server could not understand the request."
    static let unauthorized = "Unauthorized: Authentication is required to access this resource."
    static let forbidden = "Forbidden: You do not have permission to access this resource."
    static let notFound = "Not Found: The requested resource was not found on the server."
    static let methodNotAllowed = "Method Not Allowed: The requested HTTP method is not supported for this resource."
    static let internalServerError = "Internal Server Error: An unexpected error occurred on the server."
    static let notImplemented = "Not Implemented: The server does not support the functionality required to fulfill the request."
    static let badGateway = "Bad Gateway: The server, while acting as a gateway or proxy, received an invalid response from the upstream server."
    static let serviceUnavailable = "Service Unavailable: The server is currently unable to handle the request due to temporary overloading or maintenance of the server."
    static let gatewayTimeout = "Gateway Timeout: The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server."
    static let unknownError = "Unknown Error: An unexpected error occurred."
}

struct Constant {
    
    //colorLiteral: RGB with Alpha
    struct Colors {
        static let toastErrorBG = #colorLiteral(red: 0.9725490196, green: 0.8431372549, blue: 0.8549019608, alpha: 1)
        static let toastSuccessBG = #colorLiteral(red: 0.831372549, green: 0.9294117647, blue: 0.8549019608, alpha: 1)
        static let toastErrorText = #colorLiteral(red: 0.4470588235, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        static let toastSuccessText = #colorLiteral(red: 0.08235294118, green: 0.3411764706, blue: 0.1411764706, alpha: 1)
    }
}
