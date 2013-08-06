# Payload Files

Payload files are another way to get loader to send varying data to your app. The file should contain JSON data like this:

    {
      "keys": ["username", "password"] ,
      "values": [
        ["steve", "h4x0R"],
        ["joe1", "silly"],
        ["jack", "<3jill"],
        ["jill", "<3jack"]
      ]
    }

On each request, loader.io will send a different set of data from your payload file:

    request 1: username=steve, password=h4x0R
    request 2: username=joe1, password=silly
    request 3: username=jack, password=<3jill
    request 4: username=jill, password=<3jack

Place your payload data in a file at any publicly-accessible URL (S3, Dropbox, or your own server is fine&mdash;just somewhere we can get at it), and enter the URL in the payload file URL field:

![Payload File URL Field][payload-url-field]

[payload-url-field]: ../img/loaderio-payload-file-url-field.png
