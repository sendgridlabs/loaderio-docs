# `PUT /v2/tests/:test_id/run`

When you create a test, it runs automatically (unless you scheduled it to run at some other time). You can run the same test again with this method. Make sure your validation files/DNS records are still in place.

    $ curl -H 'loaderio-auth: API_KEY' \
          https://api.loader.io/v2/tests/f133e9e3691e405eefd3e1b7c351cb18/run \
           -X PUT | python -mjson.tool

Response:

    {
        "message": "success",
        "result_id": "d745513b3d1e0689ab5f5e34525cc484",
        "status": "running",
        "test_id": "f133e9e3691e405eefd3e1b7c351cb18"
    }

Each run generates a new result set with a unique `result_id`.
