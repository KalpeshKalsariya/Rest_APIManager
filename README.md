# Workflow

APIManager class:
- This class is responsible for managing API requests.
- It's implemented as a singleton, meaning there's only one instance of APIManager shared across the application.

Properties and Methods:
- shared: Static property that holds the shared instance of APIManager.
- sendRequest: Method to send an API request to a given URL.

Parameters:
- url: The URL to which the request will be sent.
- method: HTTP method for the request (default is .get).
- parameters: Optional parameters to include in the request body (default is nil).
- isShowLoader: Indicates whether to show a loader while the request is in progress (default is true).
- completion: Closure called when the request is completed. It takes a Result type, which contains either the JSON response or an error.

Request Handling:
- The method constructs a URLRequest based on the provided parameters.
- It then creates a data task with a closure to handle the response.
- In the closure, it checks for errors, HTTP status codes, and parses the response data accordingly.
- If successful (status code 2xx), it parses the JSON response and passes it to the completion handler as a success result.
- If there's an error (status code not in the 2xx range), it constructs an appropriate error message and passes it to the completion handler as a failure result.

Enums:
- HTTPMethod: An enum representing HTTP methods like GET, POST, PUT, DELETE.
- ToastType: This enum was not included in the code you provided but was previously discussed. It represents different types of toast messages (e.g., warning, failure, success).

Constants:
- There are constants like ConstantMessage.badRequest, ConstantMessage.unauthorized, etc., used in error handling. These constants likely hold string messages for different HTTP status codes.

Helper Functions:
- errorMessage(forStatusCode:): Generates an error message based on the HTTP status code.
- parseErrorMessage(from:): Parses an error message from response data if available. This function is currently not used in the code provided but could be useful for handling error messages returned by APIs.

Overall, the APIManager class provides a convenient way to make API requests with error handling and support for various HTTP methods. It also supports showing loaders during API requests, although the implementation for showing/hiding loaders is not included in the code snippet provided.
