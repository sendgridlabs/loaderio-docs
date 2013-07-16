# `GET /v2/tests/:test_id`

Get information about a specific test.

    $ curl -H 'loaderio-auth: API_KEY' \
         https://api.loader.io/v2/tests/f133e9e3691e405eefd3e1b7c351cb18 | python -mjson.tool

Example response:

    {
        "callback": null,
        "callback_email": null,
        "domain": "gonnacrushya.com",
        "duration": 60,
        "initial": 0,
        "name": null,
        "notes": null,
        "scheduled_at": null,
        "status": "complete",
        "test_id": "f133e9e3691e405eefd3e1b7c351cb18",
        "test_type": "Cycling",
        "timeout": 10000,
        "total": 6000,
        "urls": [
            {
                "authentication": {},
                "headers": {},
                "payload_file_url": null,
                "raw_post_body": null,
                "request_params": {},
                "request_type": "GET",
                "url": "http://gonnacrushya.com"
            }
        ]
    }

