## http

Most elements takes optional [config](https://docs.vespa.ai/en/reference/config-files.html#generic-configuration-in-services-xml) elements, see example in [server](https://docs.vespa.ai/en/reference/services-http.html#server).

Note: To bind the search handler port (i.e. queries), refer to [search bindings](https://docs.vespa.ai/en/reference/services-search.html#binding).

Example:

```
<http>
    <server id="server1" port="8080" />
    <server id="server2" port="9000" />

    <filtering>
        <filter id="request-filter1" class="com.yahoo.test.RequestFilter1" />
        <filter id="response-filter1" class="com.yahoo.test.ResponseFilter1" />

        <request-chain id="test-request-chain">
            <binding>http://*/*</binding>
            <filter id="request-filter1"/>
            <filter id="request-filter2" class="com.yahoo.test.RequestFilter2" />
        </request-chain>

        <response-chain id="test-response-chain">
            <binding>http://*:8080/*</binding>
            <binding>http://*:9000/path</binding>
            <filter id="response-filter1"/>
            <filter id="response-filter2" class="com.yahoo.test.ResponseFilter2" />
        </response-chain>
    </filtering>
</http>
```

[Read more](https://docs.vespa.ai/en/reference/services-http.html#)