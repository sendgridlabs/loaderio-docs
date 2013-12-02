# Test Types

Loader.io supports three test types: **Clients per test**, **Clients per second**, and **Maintain client load** tests.

## Clients per test <a href="#non-cycling" id="non-cycling" class="mark">#</a>

This test allows you to specify a total number of clients to connect to your service, and then be done. When creating this test, you specify just one number, and that many clients will connect over the duration of the test. For example, if you create a 20-second test with 20,000 clients, loader will attempt to run 1,000 clients per second.

## Clients per second <a href="#per-second" id="per-second" class="mark">#</a>

This test allows you to specify a number of clients to connect each second. When creating this test, you specify just one number, and that many clients will connect per second for the duration of the test. For example, if you create a 20-second test with 1,000 clients per second, loader will attempt to connect 20,000 clients during the test.

## Maintain client load <a href="#cycling" id="cycling" class="mark">#</a>

If you really want to hammer your website or API, this test is the way to do it. Loader ensures that a constant number of clients is loading your service at all times. So this test makes as many requests as it can for the amount of time you specify.

This test allows you to specify a `from` and a `to` value for clients. If you specify zero and 10,000 here for example, the test will start with 0 clients and increase up to 10,000 simultaneous clients by the end of the test.

<div id="spacer"></div>
