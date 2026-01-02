## dictionary

Contained in [field](https://docs.vespa.ai/en/reference/schema-reference.html#field), and specifies details of the dictionary used in the inverted index of the field. Applies only to [attributes](https://docs.vespa.ai/en/reference/schema-reference.html#attribute) annotated with `fast-search`. You can specify either `btree` or `hash`, or both.

### Dictionary Types

**btree** (Default): Provides good performance for exact, prefix, and range lookups. Recommended for most use cases. Find more details in [attribute index structures](https://docs.vespa.ai/en/attributes.html#index-structures).

**hash**: Optimized for fields with high cardinality (many unique values), such as unique ID fields where each posting list contains only one item.

<br />

**Note:** When using `hash`, prefix searches for strings and range searches for numeric fields will fall back to a full scan. This is primarily beneficial when you have many unique terms with few occurrences each, where dictionary lookup costs would otherwise be significant.

<br />

### Case Handling for String Fields

For string attributes, you can specify how character case is handled:

* **uncased** (Default): Case-insensitive - 'bear', 'Bear', and 'BEAR' are treated as identical
* **cased**: Case-sensitive - 'bear', 'Bear', and 'BEAR' are treated as different terms

This setting is automatically checked against the field's [match:casing](https://docs.vespa.ai/en/reference/schema-reference.html#match) setting.

### Important Rules for String Fields with Dictionaries

**For `btree` dictionaries** : Both `cased` and `uncased` options are supported.

**For `hash` dictionaries** : Only `cased` is supported for string fields. When using `hash` dictionaries:

* You **must** set `match: cased` on the field
* You **must** include `cased` in the dictionary block

```
dictionary {
  hash    
  cased   
}
```

### Example: Case-Sensitive Hash Dictionary

```
field id_str type string {
      indexing:   summary | attribute
      attribute:  fast-search  
      match:      cased        
      rank:       filter
      dictionary {
        hash                   
        cased                  
      }
}
```

[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#dictionary)