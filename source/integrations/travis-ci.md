# TravisCI Integration

You can use the [test webhook](webhook.html) to initiate a load test by adding a section like this to your `.travis.yml` file:

    webhooks:
      urls:
        - https://api.loader.io/v2/tests/{{test id}}/token/{{ test run token}}/run

You can also tell travis to only send the webhook when your build succeeds (or fails) by adding something like this:

      on_success: always
      on_failure: never

Check out the [TravisCI docs](http://about.travis-ci.org/docs/user/notifications/#Webhook-notification) for more details.
