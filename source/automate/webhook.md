# The test webhook

Each test has a unique token which will allow you to initiate that test through our API without handing out your full access token for your account. After you create and run a test, the test information tab shows the full API webhook that you can use to automate running that test again:

![Test Information](../img/loaderio-webhook.png)

You can use this webhook in other services that support webhooks to initiate load tests after running your unit/integration tests, after commits in your source control repository, as part of your deploy process, or as part of your own custom tools. The webhook makes it easy to integrate loader.io in your development cycle any HTTP POST request to the webhook will initiate the test.

## Security <a href="#security" id="security" class="mark">#</a>

This webhook gives limited API access to your account - the token in the URL is specific to a single test, and allows anybody who has it to run a test against your server, so be careful who you give it to! If you think your webhook may have been compromised, you can reset the token and the old one will no longer work.
