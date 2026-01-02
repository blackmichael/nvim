## mutate

Contained in [rank-profile](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile). Specifies mutating operations you can do to each of the documents that make it through the 4 query phases, *on-match* , *on-first-phase* , *on-second-phase* and *on-summary*.

```
mutate {
    [phase name] { [attribute name] [operation] [numeric_value] }
}
```

The phases are: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#mutate)