## chain

Specifies how a search chain should be instantiated, and how the contained searchers should be ordered. Refer to the [chain reference](https://docs.vespa.ai/en/reference/services-processing.html#chain) for attributes and child elements. Chains can [inherit](https://docs.vespa.ai/en/reference/services-processing.html#inherits) searchers from other chains and use [phases](https://docs.vespa.ai/en/reference/services-processing.html#phase) for ordering. Note that [provider](https://docs.vespa.ai/en/reference/services-search.html#provider) and [source](https://docs.vespa.ai/en/reference/services-search.html#source) elements are also chains. Specify a search chain in a query using [searchChain](https://docs.vespa.ai/en/reference/query-api-reference.html#searchchain).

Example which inherits from the built-in *vespa* chain so that the searcher can dispatch queries to the content clusters:

```
<chain id="common" inherits="vespa">
    <searcher class="com.yahoo.vespatest.ExtraHitSearcher" id="CommonSearcher" bundle="the name in <artifactId> in your pom.xml" >
        <config name="vespatest.extra-hit">
            <exampleString>A searcher for ...</exampleString>
        </config>
    </searcher>
</chain>
```

Optional sub-elements:

* searcher or federation (one or more), either a reference or definition. If the name given for a searcher matches an *outer searcher* , it is a *searcher reference* . Otherwise, it is a *searcher definition* . If it is a searcher definition, it is also an implicit searcher reference saying: use *exactly* this searcher. All these searcher elements must have different name.
* [phase](https://docs.vespa.ai/en/reference/services-processing.html#phase) (one or more).
* [config](https://docs.vespa.ai/en/reference/config-files.html#generic-configuration-in-services-xml) (one or more - will apply to all *inner* searchers in this search chain, unless overridden by individual inner searchers).

You can put search config in separate files in a directory under the application package using [include](https://docs.vespa.ai/en/reference/services-container.html#include). Each file must contain one `<search>` element like above. Vespa behaves as if each chain configured within was "inline" in `services.xml`. This is handy when multiple developers need to deploy individual search chains, say in different packages.  
**Note:** If using multiple container clusters, the modular search chains will be available in all the clusters.

Each searcher reference must match the *type* of the searcher definition. So for example the searcher reference *federation idref="myId"* must match an outer searcher defined as *federation id="myId"* , not *searcher id="myId"*.
[Read more](https://docs.vespa.ai/en/reference/services-search.html#chain)