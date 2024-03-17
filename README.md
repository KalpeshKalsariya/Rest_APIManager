# Workflow

//ViewConroller 

In iOS, API calls are usually made in the lifecycle methods of the ViewController or in response to user interaction. Here are some common places where you might call an API:

- viewDidLoad(): This method is called after the view controller has loaded its view hierarchy into memory. This is often a good place to make API calls for data that needs to be displayed as soon as the view loads.
- viewWillAppear(_:) or viewDidAppear(_:): These methods are called just before or just after the view controller’s view is added to a view hierarchy and becomes visible. If you need to refresh your data every time the view appears (for example, if it might change while the view is offscreen), this could be a good place to make an API call.
- In response to user interaction: If you need to fetch data in response to a button tap or other user interaction, you can make an API call in the method that handles that interaction.

//ViewController API Call
- ViewController is the class that manages a view in the app’s user interface.
- fetchCustomers is a function that fetches customer data from a REST API.
- url is the URL of the API endpoint.
- parameters are the parameters to be sent with the API request.
- APIManager.shared.sendRequest is used to send the API request using the shared APIManager instance.
- DispatchQueue.main.async is used to switch back to the main thread to update the UI.
- result is used to handle the result of the API request.
- json is the JSON response from the API request.
- responseDictionary and responseArray are used to check the type of the JSON response.
- error is used to handle any errors that occur during the API request.

//APIManager class
- APIManager is a singleton class that manages API requests.
- shared is the shared instance of APIManager.
- init() is a private initializer to ensure only one instance of APIManager is created.
- sendRequest(url:method:parameters:completion:) is a function to send a request to a given URL with optional parameters. The completion handler returns a Result type that contains either the JSON response or an Error.
- request is a URLRequest object with the given URL.
- httpMethod is the HTTP method of the request.
- parameters are the parameters to be sent with the request.
- task is a data task with the request and a completion handler.
- error is an error that occurred during the request.
- httpResponse is the HTTP response from the server.
- data is the data returned from the server.
- json is the JSON object parsed from the data.
- resume() is a function to start the data task.
