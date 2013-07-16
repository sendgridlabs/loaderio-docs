# `POST /v2/apps`

Register a new app:

    $ curl -H 'loaderio-auth: API_KEY' https://api.loader.io/v2/apps \
           -d app=www.gonnacrushya.com | python -mjson.tool

Example response:

    {
        "app_id": "98e9b2f9ccc6de07ca5997413861425a",
        "message": "success",
        "verification_id": "loaderio-98e9b2f9ccc6de07ca5997413861425a"
    }

