# Expression Syntax

Expression syntax allows you to randomize the data loader sends to your app in requests. Expressions can be substituted in URLs, GET or POST parameters, and POST body to create dynamic/random requests.

Expressions are available for numeric values only. All expressions begin with `%{` and end with `}`. The following patterns are supported:

<table class="table">
  <thead>
    <tr>
      <th>Expression Type</th>
      <th>Example</th>
      <th>Result</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>List of values</td>
      <td><code>%{1, 2, 3}</code></td>
      <td>Iterate over the values</td>
    </tr>
    <tr>
      <td>Range of values</td>
      <td><code>%{1:100:2}</code></td>
      <td>Values from 1 to 100 incrementing by 2</td>
    </tr>
    <tr>
      <td>Random values</td>
      <td><code>%{*:1-100}</code></td>
      <td>Pick random values between 1 and 100</td>
    </tr>
    <tr>
      <td>List of Expressions</td>
      <td><code>%{1, 2:100:2, *:1-100, 17}</code></td>
      <td>Evaluates each expression in turn</td>
    </tr>
  </tbody>
</table>

