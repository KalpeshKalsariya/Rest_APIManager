//
//  APIManager.swift
//  Rest_APIManager
//
//  Created by  Kalpesh on 17/03/24.
//

import Foundation

// APIManager is a singleton class that manages API requests.
class APIManager {
    // Shared instance of APIManager.
    static let shared = APIManager()
    
    // Private initializer to ensure only one instance of APIManager is created.
    private init() {}
    
    // Function to send a request to a given URL with optional parameters.
    // The completion handler returns a Result type that contains either the JSON response or an Error.
    func sendRequest(url: URL, method: HTTPMethod = .get, parameters: [String: Any]? = nil, isShowLoader: Bool = true, completion: @escaping (Result<Any, Error>) -> Void) {
        
        if isShowLoader {
            // show loader
        }
        
        // Create a URLRequest object with the given URL.
        var request = URLRequest(url: url)
        // Set the HTTP method of the request.
        request.httpMethod = method.rawValue
        
        // If parameters are provided, add them to the request body and set the content type of the request.
        if let parameters = parameters {
            request.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        }
        
        // Create a data task with the request and a completion handler.
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if isShowLoader {
                // hide loader
            }
            
            // If an error occurred, pass the error to the completion handler.
            if let error = error {
                completion(.failure(error))
                return
            }
            
            // Ensure the response is an HTTPURLResponse, otherwise pass an error to the completion handler.
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(NSError(domain: "Invalid response", code: 0, userInfo: nil)))
                return
            }
            
            // Handle the HTTP status code of the response.
            switch httpResponse.statusCode {
            case 200...299:
                // If the status code is 2xx, try to parse the data as JSON.
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        print("Server Response: \(json)")
                        completion(.success(json))
                    } catch {
                        completion(.failure(error))
                    }
                }
                else {
                    completion(.failure(NSError(domain: "No data", code: 0, userInfo: nil)))
                }
            default:
                // If the status code is not in the 2xx range, create an error with the appropriate message.
                let errorMessage = self.errorMessage(forStatusCode: httpResponse.statusCode)
                completion(.failure(NSError(domain: errorMessage, code: httpResponse.statusCode, userInfo: nil)))
            }
            
            /*case 400...499:
             // If the status code is 4xx, pass a client error to the completion handler.
             completion(.failure(NSError(domain: "Client error", code: httpResponse.statusCode, userInfo: nil)))
             case 500...599:
             // If the status code is 5xx, pass a server error to the completion handler.
             completion(.failure(NSError(domain: "Server error", code: httpResponse.statusCode, userInfo: nil)))
             default:
             // If the status code is not handled, pass an unknown error to the completion handler.
             completion(.failure(NSError(domain: "Unknown error", code: httpResponse.statusCode, userInfo: nil)))
             }*/
        }
        
        // Start the data task.
        task.resume()
    }
    
    // Function to return error message for a given status code.
    private func errorMessage(forStatusCode statusCode: Int) -> String {
        switch statusCode {
        case 400:
            return ConstantMessage.badRequest
        case 401:
            return ConstantMessage.unauthorized
        case 403:
            return ConstantMessage.forbidden
        case 404:
            return ConstantMessage.notFound
        case 405:
            return ConstantMessage.methodNotAllowed
        case 500:
            return ConstantMessage.internalServerError
        case 501:
            return ConstantMessage.notImplemented
        case 502:
            return ConstantMessage.badGateway
        case 503:
            return ConstantMessage.serviceUnavailable
        case 504:
            return ConstantMessage.gatewayTimeout
        default:
            return ConstantMessage.unknownError
        }
    }

    
    // Function to parse error message from response data.
    private func parseErrorMessage(from data: Data) -> String? {
        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                if let errorMessage = json["message"] as? String {
                    return errorMessage
                }
            } else if let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]], jsonArray.count > 0 {
                // Handle array case (if needed)
                // For example, you could extract messages from each object in the array.
                // Replace the following line with your desired logic:
                return "Multiple error messages found in the array."
            }
        } catch {
            return nil
        }
        return nil
    }

}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
    // Add other HTTP methods as needed
}
