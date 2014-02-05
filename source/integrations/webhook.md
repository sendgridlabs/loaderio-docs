# The test webhook

Many tools and services allow you to configure a webhook that will receive notifications when you commit code, complete a test run, or deploy your application. You can use these settings to initiate a loader.io load test.

Each test has a unique URL which will initiate that test through the loader.io API. A unique test-specific token is embeded right into the URL, so you can initiate tests without writing any code or handing out full access to your account.

You can find your test's webhook on the "Test Information" tab:

![Test Information](../img/loaderio-webhook.png)

## Security <a href="#security" id="security" class="mark">#</a>

This webhook gives limited API access to your account - the token in the URL is specific to a single test, and allows anybody who has it to run a test against your server, so be careful who you give it to! If you think your webhook may have been compromised, you can reset the token and the old one will no longer work.
