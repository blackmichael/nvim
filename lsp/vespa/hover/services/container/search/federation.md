## federation

A federation is a [searcher](https://docs.vespa.ai/en/searcher-development.html#searchers) - see above. This element implements *federation* - it defines a searcher instance that sends each query to a set of search chains in parallel and combines the results. Read the [federation guide](https://docs.vespa.ai/en/federation.html) to learn more and find examples for use of federation and its children [source](https://docs.vespa.ai/en/reference/services-search.html#source), [source-set](https://docs.vespa.ai/en/reference/services-search.html#source-set) and [target-selector](https://docs.vespa.ai/en/reference/services-search.html#target-selector), as well as [provider](https://docs.vespa.ai/en/reference/services-search.html#provider).

```
<federation id="componentId">
    <source idref="componentSpecification" />
    <target-selector />
</federation>
```

[Read more](https://docs.vespa.ai/en/reference/services-search.html#federation)