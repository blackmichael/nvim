## rank-profile

Contained in [schema](https://docs.vespa.ai/en/reference/schema-reference.html#schema) or equivalently in separate files in the [application package](https://docs.vespa.ai/en/reference/application-packages-reference.html), named `[profile-name].profile` in any directory below `schemas/[schema-name]/`. A [rank profile](https://docs.vespa.ai/en/ranking.html#rank-profiles) is a named set of ranking expression functions and settings which can be [selected in the query](https://docs.vespa.ai/en/reference/query-api-reference.html#ranking.profile)).

Whether defined inline in the schema or in a separate .profile file, the syntax of a rank profile is

```
rank-profile [name] inherits [rank-profile1], [rank-profile2], ...  {
    [body]
}
```

The `inherits` list is optional and may contain the name of other rank profiles in this schema or one it inherits. Elements not defined in this rank profile will then be inherited from those profiles. Inheriting multiple profiles that define the same elements leads to an error at deployment.

The body of a rank-profile may contain:
[Read more](https://docs.vespa.ai/en/reference/schema-reference.html#rank-profile)