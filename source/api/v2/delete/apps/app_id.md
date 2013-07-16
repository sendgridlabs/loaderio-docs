# `DELETE /v2/apps/:app_id`

Delete an app:

    $ curl -H 'loaderio-auth: API_KEY' \
           https://api.loader.io/v2/apps/98e9b2f9ccc6de07ca5997413861425a \
           -X DELETE | python -mjson.tool

The delete command, if successful, returns an empty response and a successful `200` status code.
