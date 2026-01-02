## filtering

`filtering` is for configuring http filter chains. Sub-elements:

* [filter](https://docs.vespa.ai/en/reference/services-http.html#filter)
* [request-chain](https://docs.vespa.ai/en/reference/services-http.html#chain)
* [response-chain](https://docs.vespa.ai/en/reference/services-http.html#chain)

Example:

```
<filtering>
    <filter id="request-filter1" class="com.yahoo.test.RequestFilter1" />
    <filter id="response-filter1" class="com.yahoo.test.ResponseFilter1" />

    <request-chain id="test-request-chain">
        <binding>http://*/</binding>
        <filter id="request-filter1"/>
        <filter id="request-filter2" class="com.yahoo.test.RequestFilter2" />
    </request-chain>

    <response-chain id="test-response-chain">
        <binding>http://*/</binding>
        <filter id="response-filter1"/>
        <filter id="response-filter2" class="com.yahoo.test.ResponseFilter2" />
    </response-chain>
</filtering>
```

[Read more](https://docs.vespa.ai/en/reference/services-http.html#filtering)