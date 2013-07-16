# `GET /v2/servers`

Get a list of servers currently being used for load tests.

    $ curl -H 'loaderio-auth: API_KEY' https://api.loader.io/v2/servers | python -mjson.tool

Example response:

    {
        "ip_addresses": [
            "50.17.172.93",
            "174.129.131.187",
            "54.235.232.26",
            "50.16.116.223",
            "50.16.165.70",
            "54.226.38.198",
            "50.16.104.200",
            "54.243.7.98",
            "23.23.71.32",
            "54.234.136.196"
        ]
    }


