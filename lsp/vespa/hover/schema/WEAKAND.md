## weakand

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile).

Tunes the [weakAnd](https://docs.vespa.ai/en/using-wand-with-vespa.html#weakand) algorithm to automatically exclude terms and documents with expected low query significance based on document frequency statistics present in the document corpus. This makes matching faster at the cost of potentially reduced recall.

```
weakand {
    [body]
}
```

Note that all document frequency calculations are done using *content node-local* document statistics (i.e. [global significance](https://docs.vespa.ai/en/significance.html#global-significance-model) does not have an effect). This means results may differ across different content nodes and/or content node groups.

The body of a `weakand` statement consists of:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#weakand)