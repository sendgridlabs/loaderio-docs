# The Loader.io API

Loader.io provides a RESTful API at [api.loader.io](https://api.loader.io/v2/). Before you use the API, you will need to find your API Key. This is located in your [account settings](https://loader.io/settings) page. You can reset your API key at any time to get a new one and expire your old one.

Using the API, you can register and verify testing domains, create and run tests, view summary result data, and access a list of IP addresses that loader might send requests to your app from during a test. Integrate loader.io into your building and testing workflows using the API.

## Authentication

To authenticate with the loader.io API, add the special `loaderio-auth` header to your request, and add your API key as the value for that header. Alternatively, you can add an `api_key` parameter to the request, in either the body or query string of the request.

## About This Documentation

In this documentation, examples are displayed in the form of [curl](http://curl.haxx.se/) commands, meant to be typed at a command prompt. For code examples in a few other languages, see our [apipary site](http://docs.loaderio.apiary.io).

A typical example API call might look something like this:

    $ curl -H 'loaderio-auth: API_KEY' https://api.loader.io/v2/tests | python -mjson.tool

Let's break that down and explain each part:

- `$`: this represents your command prompt. Don't type this part :)
- `curl`: [curl][curl] is a command-line tool for accessing URLs over HTTP (and other protocols)
- `-H 'loaderio-auth: API_KEY'`: the `-H` option tells curl to add a header to the request. In this case, we add the `loaderio-auth` header and give it the value of our API key (replace "API_KEY" with the key obtained from your [account settings][settings] page on loader.io)
- `https://api.loader.io/v2/tests`: this is the URL to the API resource we are accessing. In this case it's a list of all our tests (*note*: to keep your API key secure, always access the API over `https`, not `http`)
- `| python -mjson.tool`: this is just a handy way of getting raw JSON data and formatting it nicely. If you don't have python installed, you can leave this off of the commands

When you see a url with a section prefixed with a colon (":"), that section is a placeholder for a test ID or app ID. For example, in the URL `https://api.loader.io/v2/tests/:test_id`, `:test_id` is a placeholder for a test id, e.g. `f133e9e3691e405eefd3e1b7c351cb18`. If you used `:test_id` there, you will get an error from the API.

[curl]: http://curl.haxx.se "cURL"
[settings]: https://loader.io/settings "Loader.io account settings"
