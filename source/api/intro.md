# The Loader.io API

Loader.io provides a RESTful API at [api.loader.io](https://api.loader.io/v2/). Before you use the API, you will need to find your API Key. This is located in your [account settings](https://loader.io/settings) page. You can reset your API key at any time to get a new one and expire your old one.

Using the API, you can register and verify testing domains, create and run tests, view summary result data, and access a list of IP addresses that loader might send requests to your app from during a test. Integrate loader.io into your building and testing workflows using the API.

## Authentication

To authenticate with the loader.io API, add the special `loaderio-auth` header to your request, and add your API key as the value for that header. Alternatively, you can add an `api_key` parameter to the request, in either the body or query string of the request.

