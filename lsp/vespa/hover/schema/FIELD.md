## field

Contained in [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema), [document](https://docs.vespa.ai/en/reference/schema-reference.html#document), or [struct](https://docs.vespa.ai/en/reference/schema-reference.html#struct). Defines a named value with a type and (optionally) how this field should be stored, indexed, searched, presented, and how it should influence ranking.

```
field [name] type [type-name] {
    [body]
}
```

Do not use names that are used for other purposes in the indexing language or other places in the schema file. Reserved names are:

* attribute
* body
* case
* context
* documentid
* else
* header
* hit
* host
* if
* index
* position
* reference
* relevancy
* sddocname
* summary
* switch
* tokenize

Other names not to use include any words that start with a number or include special characters.

The *type* attribute is mandatory - supported types:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#field)