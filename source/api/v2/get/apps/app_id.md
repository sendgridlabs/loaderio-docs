# `GET /v2/apps/:app_id`

Get info about a specific app by id:

    $ curl -H 'loaderio-auth: API_KEY' \
        https://api.loader.io/v2/apps/98e9b2f9ccc6de07ca5997413861425a | python -mjson.tool

Example response:

    {
        "app": "www.gonnacrushya.com",
        "app_id": "98e9b2f9ccc6de07ca5997413861425a",
        "status": "unverified"
    }
