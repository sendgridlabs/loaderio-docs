# `GET /v2/tests/:test_id/results`

Get a list of all results from running this test.

    $ curl -H 'loaderio-auth: API_KEY' \
           https://api.loader.io/v2/tests/f133e9e3691e405eefd3e1b7c351cb18/results | python -mjson.tool

Example result:

    [
        {
            "avg_error_rate": 0.00125447235902207,
            "avg_response_time": 4,
            "data_received": 336769449,
            "data_sent": 6691336376,
            "error": 0,
            "network_error": 0,
            "public_results_url": "http://loader.io/reports/f133e9e3691e405eefd3e1b7c351cb18/results/99aa49d077c8bc37bcad3ddaa6514544",
            "result_id": "99aa49d077c8bc37bcad3ddaa6514544",
            "started_at": "2013-07-16T19:08:59Z",
            "status": "ready",
            "success": 3029124,
            "timeout_error": 38
        },
        {
            "result_id": "cc4c62739e5c1ef2e2c92d3d0a05e964",
            "started_at": "2013-07-16T18:55:34Z",
            "status": "not_ready"
        },
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
    ]

