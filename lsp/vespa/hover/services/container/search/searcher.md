## searcher

Searcher elements are contained in [chain](https://docs.vespa.ai/en/reference/services-search.html#chain) elements or in the [search]() root.

A searcher element is either a *definition* (using *id* ) or a *reference* (using *idref*).

A searcher definition causes the creation of exactly one searcher instance. This instance is set up according to the content of the searcher element. A searcher definition contained in a search chain element defines an *inner searcher* . Otherwise, it defines an *outer searcher.*

Searcher definition:
[Read more](https://docs.vespa.ai/en/reference/services-search.html#searcher)