# Applications

In loader.io, an application is more or less another word for "domain" or "subdomain". For example, if you want to run tests against both "gonnacrushya.com" and "www.gonnacrushya.com", you need to register and verify both domains as apps in loader.io.


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
      <td><code>/v2/apps</code></td>
      <td>List registered applications</td>
      <td></td>
    </tr>
    <tr>
      <td>POST</td>
      <td><code>/v2/apps</code></td>
      <td>Register new application</td>
      <td><code>app</code></td>
    </tr>
    <tr>
      <td>GET</td>
      <td><code>/v2/apps/{app_id}</code></td>
      <td>Get specific app info</td>
      <td></td>
    </tr>
    <tr>
      <td>POST</td>
      <td><code>/v2/apps/{app_id}/verify</code></td>
      <td>Verify an app</td>
      <td><code>method</code></td>
    </tr>
    <tr>
      <td>DELETE</td>
      <td><code>/v2/apps/{app_id}</code></td>
      <td>Delete an app</td>
      <td></td>
    </tr>
  </tbody>
</table>

