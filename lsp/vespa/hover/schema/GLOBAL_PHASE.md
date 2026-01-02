## global-phase

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). The config specifying the global phase of ranking. See [phased ranking with Vespa](https://docs.vespa.ai/en/phased-ranking.html). This is an optional re-ranking phase performed on the top-ranking hits in the stateless container after merging hits from all the content nodes. The "top ranking" here means as scored by the first-phase ranking expression or (if specified) second-phase ranking expression. Typically used for computing large ONNX models, which would be expensive to compute on all content nodes. By default, no global-phase ranking is performed.

```
global-phase {
    [body]
}
```

The body of a global-phase ranking statement consists of: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#globalphase-rank)