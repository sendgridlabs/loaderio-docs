# Servers

Loader.io dynamically adds and removes servers depending on the number of tests being run. As a result the IP addresses your servers will see in log files can change from test to test. If you need to make special rules in your firewall software to allow loader.io's tests access to your servers, you can use this API call to keep your rules up to date before each test.

<table class="table">
  <thead>
    <tr>
      <th>Method</th>
      <th>URL</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GET</td>
      <td><code>/v2/servers</code></td>
      <td>Get a list of servers</td>
    </tr>
  </tbody>
</table>

