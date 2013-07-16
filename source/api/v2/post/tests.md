# `POST /v2/tests`

Create a new test. Refer to the [test creation](/tests/creating.html#from-scratc) page for details about each field.

## Example <a href="#example" id="example" class="mark">#</a>

Before creating a test in the API, we have to [create][app-create] and [verify][app-verify] an app using the API. Use the domain from the URL(s) you want to test as the app name and verify it before trying this example.

    $ curl -H 'loaderio-auth: API_KEY' https://api.loader.io/v2/tests \
           --data-binary '{"test_type":"cycling",
                    "total": 6000,
                    "duration":60,
                    "urls": [
                      {"url": "http://gonnacrushya.com"}
                    ]}' \
           -H 'Content-Type: application/json' | python -mjson.tool

Example result  (**successful test creation**):

    {
        "message": "success",
        "result_id": "08627345e5aa0f89f95851a69a4cb0dc",
        "status": "running",
        "test_id": "f133e9e3691e405eefd3e1b7c351cb18"
    }

## Options <a href="#test-options" id="test-options" class="mark">#</a>

An asterisk (*) indicates required fields.

<table class="table">
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Default</th>
      <th>Example/Values</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr class="required">
      <td><code>*test_type</code></td>
      <td>string</td>
      <td>none</td>
      <td>"cycling" or "non-cycling"</td>
      <td>Test type</td>
    </tr>
    <tr class="required">
      <td><code>*urls</code></td>
      <td>JSON Array</td>
      <td>none</td>
      <td><code></code></td>
      <td>URLs to test</td>
    </tr>
    <tr class="required">
      <td><code>*duration</code></td>
      <td>number</td>
      <td>none</td>
      <td><code>60</code></td>
      <td>Duration of test, in seconds</td>
    </tr>
    <tr class="required">
      <td><code>*initial</code></td>
      <td>number</td>
      <td></td>
      <td><code>0</code></td>
      <td>Number of connections to start with (ignored for non-cycling tests)</td>
    </tr>
    <tr class="required">
      <td><code>*total</code></td>
      <td>number</td>
      <td></td>
      <td><code>60</code></td>
      <td>Number of connections to end with, or total number of connections for non-cycling tests</td>
    </tr>
    <tr>
      <td><code>timeout</code></td>
      <td>number</td>
      <td>10000</td>
      <td><code>10000</code></td>
      <td>Timeout value, in milliseconds</td>
    </tr>
    <tr>
      <td><code>error_threshold</code></td>
      <td>number</td>
      <td>50</td>
      <td><code>50</code></td>
      <td>Error percentage threshold</td>
    </tr>
    <tr>
      <td><code>callback</code></td>
      <td>URL</td>
      <td></td>
      <td><code>http://gcrshya.com/loader</code></td>
      <td>A URL to POST results to when the test finishes</td>
    </tr>
    <tr>
      <td><code>callback_email</code></td>
      <td>email address</td>
      <td></td>
      <td><code>team@gonnacrushya.com</code></td>
      <td>Email address to send results to</td>
    </tr>
    <tr>
      <td><code>scheduled_at</code></td>
      <td>datetime</td>
      <td></td>
      <td><code>2013-5-15 3:30:00</code></td>
      <td>Schedule the test to run sometime in the future</td>
    </tr>
    <tr>
      <td><code>name</code></td>
      <td>text</td>
      <td>First URL</td>
      <td>"GonnaCrushYa Homepage"</td>
      <td></td>
    </tr>
    <tr>
      <td><code>notes</code></td>
      <td>text</td>
      <td></td>
      <td>"Server: ec2-micro"</td>
      <td></td>
    </tr>
  </tbody>
</table>

## URL Options <a href="#url-options" id="url-options" class="mark">#</a>

<table class="table">
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Default</th>
      <th>Example/Values</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr class="required">
      <td><code>*url</code></td>
      <td>string</td>
      <td>none</td>
      <td><code></code></td>
      <td>URL to test</td>
    </tr>
    <tr>
      <td><code>request_type</code></td>
      <td>string</td>
      <td>"GET"</td>
      <td>"GET" or "POST"</td>
      <td>Type of request</td>
    </tr>
    <tr>
      <td><code>credentials</code></td>
      <td>JSON</td>
      <td></td>
      <td><code>{"login": "admin", "password": "secret"}</code></td>
      <td>HTTP Basic Auth credentials</td>
    </tr>
    <tr>
      <td><code>headers</code></td>
      <td>JSON</td>
      <td></td>
      <td><code>{"Content-Type": "application/json"}</code></td>
      <td>Headers to send to this URL</td>
    </tr>
    <tr>
      <td><code>request_params</code></td>
      <td>JSON</td>
      <td></td>
      <td><code>{"name": "Steve"}</code></td>
      <td>Data to send in query string or POST body</td>
    </tr>
    <tr>
      <td><code>raw_post_body</code></td>
      <td>text</td>
      <td></td>
      <td><code>"name=Steve"</code></td>
      <td>Raw data to use as POST body in request</td>
    </tr>
    <tr>
      <td><code>payload_file_url</code></td>
      <td>URL</td>
      <td></td>
      <td><code>http://gonnacrushya.com/payload.json</code></td>
      <td>URL of a payload file</td>
    </tr>
  </tbody>
</table>

[app-create]: /api/v2/post/apps.html
[app-verify]: /api/v2/post/apps/:app_id/verify.html
