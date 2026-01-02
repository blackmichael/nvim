## match-phase

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). The match-phase feature lets you increase performance by limiting hits exposed to first-phase ranking to the highest (lowest) values of some attribute. The performance gain may be substantial, especially with an expensive first-phase function. The quality loss depends on how well the chosen attribute correlates with the first-phase score.

Documents that have no value of the chosen attribute will be taken as having the value 0.

See also [graceful degradation](https://docs.vespa.ai/en/graceful-degradation.html#match-phase-degradation) and [result diversity](https://docs.vespa.ai/en/result-diversity.html#match-phase-diversity).

```
match-phase {
    attribute: [numeric single value attribute]
    order: [ascending | descending]
    max-hits: [integer]
}
```

[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#match-phase)