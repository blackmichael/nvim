## import field

Contained in [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema). Using a [reference](https://docs.vespa.ai/en/reference/schema-reference.html#reference) to a document type, import a field from that document type into this schema to be used for matching, ranking, grouping, and sorting. Only attribute fields can be imported. Importing fields are not supported in [streaming search](https://docs.vespa.ai/en/streaming-search.html#differences-in-streaming-search).

The imported field inherits all but the following properties from the parent field:

* [attribute: fast-access](https://docs.vespa.ai/en/reference/schema-reference.html#attribute)

Refer to [parent/child](https://docs.vespa.ai/en/parent-child.html) for a complete example. Note that the imported field is put outside the document type:

```
schema myschema {
    document myschema {
        field parentschema_ref type reference<parentschema> {
            indexing: attribute
        }
    }
    import field parentschema_ref.name as parent_name {}
}
```

Extra restrictions apply for some of the field types:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#import-field)