# Test Types

loader.io supports two test types: **cycling** and **non-cycling** tests.

## Cycling <a href="#cycling" id="cycling" class="mark">#</a>

If you really want to hammer your website or API, a cycling test is the way to do it. In a cycling test, each connection is re-used and our load testers continuously perform the requests for the duration of the test. So a cycling test makes as many requests as it can for the amount of time you specify.

Cycling tests allow you to specify a `from` and a `to` value for connections. If you specify zero and 10,000 here for example, the test will start with 0 connections and increase up to 10,000 simultaneous connections by the end of the test.

## Non-Cycling tests <a href="#non-cycling" id="non-cycling" class="mark">#</a>

Non-Cycling tests allow you to specify a total number of connections to make, and then be done. When creating a non-cycling test, you specify just one number, and that many connections will be made over the duration of the test. For example, if you create a 20-second test with 20,000 connections, loader will attempt to make 1,000 connections per second.

<div id="spacer"></div>
