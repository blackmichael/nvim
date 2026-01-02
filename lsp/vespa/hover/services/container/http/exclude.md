## exclude

A filter the chain under definition should exclude from the chain or chains it inherits from. Use multiple `exclude` tags to exclude multiple filters. Contained in [inherits](https://docs.vespa.ai/en/reference/services-http.html#inherits). Example:

```
<request-chain id="demo">
    <inherits>
        <chain>idOfSomeInheritedChain</chain>
        <exclude>idOfUnwantedFilter</exclude>
        <exclude>idOfYetAnotherUnwantedFilter</exclude>
    </inherits>
    <filter id="filter2" class="com.yahoo.test.Filter2"/>
</request-chain>
```

[Read more](https://docs.vespa.ai/en/reference/services-http.html#exclude)