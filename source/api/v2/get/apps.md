# `GET /v2/apps`

Get a list of all your registered apps:

    $ curl -H 'loaderio-auth: API_KEY' https://api.loader.io/v2/apps | python -mjson.tool

Example response:

    [
      {
          "app": "gonnacrushya.com",
          "app_id": "7f96512623a64311e6b4e899896e73d7",
          "status": "verified"
      }
    ]
