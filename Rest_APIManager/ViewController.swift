//
//  ViewController.swift
//  Rest_APIManager
//
//  Created by  Kalpesh on 17/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Fetch customer data
        fetchCustomers()
    }

}

// ViewController is a class that manages a view in the app's user interface.
extension ViewController {
    
    // This function fetches customer data from a REST API.
    private func fetchCustomers() {
        // The URL of the API endpoint.
        guard let url = URL(string: "\(APIConstants.baseURL)\(APIConstants.getCustomersEndpoint)") else {
            return
        }
        
        // Parameters to be sent with the API request.
        let _ = ["ServerKey1": "Passing value 1",
                 "ServerKey2": "Passing value 2"]
        
        // Send the API request using the shared APIManager instance.
        APIManager.shared.sendRequest(url: url, method: .get) { result in
            // Switch back to the main thread to update the UI.
            DispatchQueue.main.async {
                // Handle the result of the API request.
                switch result {
                case .success(let json):
                    // Check the type of the JSON response.
                    if let responseDictionary = json as? [String: Any] {
                        print("Response is a dictionary: \(responseDictionary)")
                        // Handle dictionary response (e.g., extract data)
                    } else if let responseArray = json as? [[String: Any]] {
                        print("Response is an array: \(responseArray)")
                        // Handle array response (e.g., process each item)
                    } else {
                        print("Response format is unexpected.")
                    }
                    // Update your UI
                case .failure(let error):
                    print("Error: \(error)")
                    // Handle the error here
                    // Show an error message to the user
                }
            }
        }
    }
}
