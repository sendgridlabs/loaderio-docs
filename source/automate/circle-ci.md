# CircleCI Integration

You can use the [test webhook](webhook.html) to initiate a load test by adding a section like this to your `circle.yml` file:

    notify:
      webhooks:
        # A list of hook hashes, containing the url field
        - https://api.loader.io/v2/tests/{{test id}}/token/{{ test run token}}/run

Check out the [CircleCI docs](https://circleci.com/docs/configuration#notify) for more details.
