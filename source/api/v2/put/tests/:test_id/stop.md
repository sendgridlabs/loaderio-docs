# `PUT /v2/tests/:test_id/stop`

Stop a currently running test.

    $ curl -H 'loaderio-auth: API_KEY' \
          https://api.loader.io/v2/tests/f133e9e3691e405eefd3e1b7c351cb18/stop \
           -X PUT | python -mjson.tool

Response:

    {
        "message": "success",
        "result_id": "d745513b3d1e0689ab5f5e34525cc484",
        "status": "running",
        "test_id": "f133e9e3691e405eefd3e1b7c351cb18"
    }

Note that the status still might say "running" right after hitting the API's stop button. It takes a few moments to tell all of the load testers to shut down the test, and the status should soon change to "complete".
Each run generates a new result set with a unique `result_id`.
