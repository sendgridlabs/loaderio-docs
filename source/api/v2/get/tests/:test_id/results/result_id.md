# `GET /v2/tests/:test_id/results/:result_id`

Get a specific result from this test.

    $ curl -H 'loaderio-auth: API_KEY' \
           https://api.loader.io/v2/tests/f133e9e3691e405eefd3e1b7c351cb18/results/08627345e5aa0f89f95851a69a4cb0dc \
           | python -mjson.tool

Example result:

    {
        "avg_error_rate": 0.00315156400998649,
        "avg_response_time": 6,
        "data_received": 419790234,
        "data_sent": 8340708316,
        "error": 0,
        "network_error": 0,
        "public_results_url": "http://loader.io/reports/f133e9e3691e405eefd3e1b7c351cb18/results/d745513b3d1e0689ab5f5e34525cc484",
        "result_id": "d745513b3d1e0689ab5f5e34525cc484",
        "started_at": "2013-07-16T18:48:08Z",
        "status": "ready",
        "success": 3775784,
        "timeout_error": 119
    }

