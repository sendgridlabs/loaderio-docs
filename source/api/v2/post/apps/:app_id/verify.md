# `POST /v2/apps/:app_id/verify`

Create your [verification file][verify-http] or [DNS TXT record][verify-dns]&mdash;use the `app_id` as your verification token&mdash;then tell loader.io to verify your app:

    $ curl -H 'loaderio-auth: API_KEY' https://api.loader.io/v2/apps \
           -d method=http | python -mjson.tool

Example response, **successful verification**:

    {
        "app_id": "98e9b2f9ccc6de07ca5997413861425a",
        "message": "success"
    }

Example response, **failed verification**:

    {
        "app_id": "98e9b2f9ccc6de07ca5997413861425a",
        "errors": [
            "can't verify domain www.gonnacrushya.com"
        ], 
        "message": "error"
    }

[verify-http]: /tests/verifying.html#http
[verify-dns]: /tests/verifying.html#dns
