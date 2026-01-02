## second-phase

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). The config specifying the second phase of ranking. See [phased ranking with Vespa](https://docs.vespa.ai/en/phased-ranking.html). This is the optional re-ranking phase performed on the top-ranking hits from the `first-phase`, and where you should put any advanced relevancy calculations. For example Machine Learned Ranking (MLR) models. By default, no second-phase ranking is performed.

```
second-phase {
    [body]
}
```

The body of a secondphase-ranking statement consists of: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#secondphase-rank)