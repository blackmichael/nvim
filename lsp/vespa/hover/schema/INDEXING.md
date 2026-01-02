## indexing

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field) or [struct-field](https://docs.vespa.ai/en/reference/schema-reference.html#struct-field). One or more Indexing Language instructions used to produce index, attribute and summary data from this field. Indexing instructions have pipeline semantics similar to Unix shell commands. The value of the field enters the pipeline during indexing, and the pipeline puts the value into the desired index structures, possibly doing transformations and pulling in other values along the way.

```
indexing: [index-statement]
```

or

```
indexing {
    [indexing-statement];
    [indexing-statement];
    …
}
```

If the field containing this is defined outside the document, it must start with an indexing statement which outputs a value (either "input \[fieldname\]" to fetch a field value, or a literal, e.g, "some-value" ). Fields in documents will use the value of the enclosing field as input (input \[fieldname\]) if one isn't explicitly provided.

Specify the operations separated by the pipe (`|`) character. For advanced processing needs, use the [indexing language](https://docs.vespa.ai/en/reference/indexing-language-reference.html), or write a [document processor](https://docs.vespa.ai/en/document-processing.html). Supported expressions for fields are:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#indexing)