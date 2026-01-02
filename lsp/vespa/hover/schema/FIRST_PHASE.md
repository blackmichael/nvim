## first-phase

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). The config specifying the first phase of ranking. See [phased ranking with Vespa](https://docs.vespa.ai/en/phased-ranking.html). This is the initial ranking performed on all matching documents; you should therefore avoid doing computationally expensive relevancy calculations here. By default, this will use the ranking feature `nativeRank`.

```
first-phase {
    [body]
}
```

The body of a first-phase ranking statement consists of: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#firstphase-rank)