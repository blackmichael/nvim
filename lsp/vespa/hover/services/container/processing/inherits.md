## inherits

Inherit from one or more parent chain(s).

When a search chain inherits from another search chain, it subsumes the phases and the *searcher references* (both implicitly and explicitly defined) from the parent chain.

If two or more inherited component references have the same name, a new component specification matching those will be used instead. If that is not possible, an error will be signaled (i.e. if the version specifications can not be consolidated or if they require component definitions from different chains).

The component references determines which instances are used in the resulting chain instance.

A component reference is a component specification that says: there shall be exactly one component in this chain with the given name, and this component must match the version specification.

A component reference *overrides* any inherited component references with the same name (i.e. the inherited ones are ignored).

If several components match a given component reference, the newest (as determined by the version) is used.
[Read more](https://docs.vespa.ai/en/reference/services-processing.html#inherits)