# Tests

Once you have registered and verified an app, you can create and run tests on it.

<table class="table">
  <thead>
    <tr>
      <th>Method</th>
      <th>URL</th>
      <th>Action</th>
      <th>Parameters</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GET</td>
      <td><code>/v2/tests</code></td>
      <td>List tests</td>
      <td></td>
    </tr>
    <tr>
      <td>POST</td>
      <td><code>/v2/tests</code></td>
      <td>Create new test</td>
      <td><a href="/api/v2/post/tests.html#test-options">see POST /v2/tests</a></td>
    </tr>
    <tr>
      <td>GET</td>
      <td><code>/v2/tests/{test_id}</code></td>
      <td>Get specific test info</td>
      <td></td>
    </tr>
    <tr>
      <td>PUT</td>
      <td><code>/v2/tests/{test_id}/run</code></td>
      <td>Run a test</td>
      <td></td>
    </tr>
    <tr>
      <td>PUT</td>
      <td><code>/v2/tests/{test_id}/stop</code></td>
      <td>Stop a test</td>
      <td></td>
    </tr>
  </tbody>
</table>

