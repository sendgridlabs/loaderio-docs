# Frequently Asked Questions

### Do you support cookies? <a href="#cookies" id="cookies" class="mark">#</a>

Yes. Send a `set-cookie` header, and we will send the cookie back on the next request.

### What causes network errors? <a href="#network-errors" id="network-errors" class="mark">#</a>

Network errors can be caused by DNS resolution failures or TCP connection problems. If we are unable to either find or connect to your server for some reason, that is a network error.

### Do you load linked resources/assets? <a href="#linked-resources" id="linked-resources" class="mark">#</a>

No. Our load generators only know about the URLs you give us when you create a test. We don't parse the HTML and we don't download javascript, CSS, or images linked to within pages.

### How do you handle redirects? <a href="#redirects" id="redirects" class="mark">#</a>

We follow HTTP redirects as long as they are to a domain you have verified previously. Redirects out to other sites are not followed (but we still report the response time- the time it took to get the redirection).

