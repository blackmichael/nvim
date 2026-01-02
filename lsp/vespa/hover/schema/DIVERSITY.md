## diversity

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). Diversity is used to guarantee diversity in the different query phases. If you have [match-phase](https://docs.vespa.ai/en/reference/schema-reference.html#match-phase), it will provide diverse results from match-phase to first-phase. If you have [second-phase](https://docs.vespa.ai/en/reference/schema-reference.html#secondphase-rank), it will provide diverse results from first-phase to second-phase.

Read more about this in [result diversity](https://docs.vespa.ai/en/result-diversity.html).

Specify the name of an attribute that will be used to provide diversity. Result sets are guaranteed to get at least [min-groups](https://docs.vespa.ai/en/reference/schema-reference.html#diversity-min-groups) unique values from the [diversity attribute](https://docs.vespa.ai/en/reference/schema-reference.html#diversity-min-groups) from this phase, but no more than max-hits. For [match-phase](https://docs.vespa.ai/en/reference/schema-reference.html#match-phase) max-hits = [match-phase max-hits](https://docs.vespa.ai/en/reference/schema-reference.html#match-phase-max-hits). For [second-phase](https://docs.vespa.ai/en/reference/schema-reference.html#secondphase-rank) max-hits = [rerank-count](https://docs.vespa.ai/en/reference/schema-reference.html#secondphase-rerank-count) A document is considered a candidate if:

* The query has not yet reached the *max-hits* number produced from this phase.
* The query has not yet reached the max number of candidates in one group. This is computed by the *max-hits* of the phase divided by [min-groups](https://docs.vespa.ai/en/reference/schema-reference.html#diversity-min-groups)

```
diversity {
    attribute: [attribute name]
    min-groups: [integer]
}
```

[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#diversity)