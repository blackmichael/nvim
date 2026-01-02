## summary

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field) or [document-summary](https://docs.vespa.ai/en/reference/schema-reference.html#document-summary) or [struct-field](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field). Declares a summary field.

```
summary: [property]
```

or

```
summary [name] {
    [body]
}
```

The summary *name* can be skipped if this is set inside a field. The name will then be the same as the name of the source field. *full* summary is the default. Long field values (like document content fields) should be made *dynamic* . The body of a summary may contain: [Read more](https://docs.vespa.ai/en/reference/schema-reference.html#summary)