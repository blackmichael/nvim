## federationoptions

Contained in [source](https://docs.vespa.ai/en/reference/services-search.html#source) or [provider](https://docs.vespa.ai/en/reference/services-search.html#provider). Specifies *how* a federation searcher should federate to a given search chain. If a federation options A *overrides* another federation options B, the result is a new federation options containing:

* all the options in B not present in A
* all the options in A

When federating to a source or provider, the federation searcher per default uses the federation options from the search chain. If a [source reference](https://docs.vespa.ai/en/reference/services-search.html#source-reference) contains federation options, it overrides the options of the search chain when used from the enclosing federation searcher.
[Read more](https://docs.vespa.ai/en/reference/services-search.html#federationoptions)