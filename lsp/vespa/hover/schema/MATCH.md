## match

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field), [fieldset](https://docs.vespa.ai/en/reference/schema-reference.html#fieldset) or [struct-field](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field). Sets the matching method to use for this field to something other than the default token matching.

```
match: [property]
```

or

```
match {
    [property]
    [property]
    …
}
```

Whether the match type is `text`, `word` or `exact`, all term matching will be done after [normalization](https://docs.vespa.ai/en/linguistics.html#normalization) and locale-independent lowercasing (in that order).

Find examples and more details in the [Text Matching](https://docs.vespa.ai/en/text-matching.html) guide. Also see search using [regular expressions](https://docs.vespa.ai/en/reference/query-language-reference.html#matches).
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#match)