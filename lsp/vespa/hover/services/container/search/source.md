## source

Reference to a source that should be used by the enclosing federation searcher. Child element [federationoptions](https://docs.vespa.ai/en/reference/services-search.html#federationoptions) is optional.

```
<source idref="componentSpecification">
    <federationoptions/>
</source>
```

## source

Defines a source search chain and an associated source.

```
<provider id="providerA">
    <source id="commonSource">
        <searcher id="com.yahoo.example.AddHitSearcher" bundle="the name in <artifactId> in your pom.xml" >
            <config name="vespatest.hit-title">
                <hitTitle>providerA</hitTitle>
            </config>
        </searcher>
    </source>
</provider>
```

The component id specified is the id of the associated source. The associated source consists of all the source search chains with the same source name.

Only a single source search chain can specify the source name using the "id" attribute. This search chain is called the *leader*. The other source search chains must specify the source name using the "idref" attribute. The latter search chains are called participants.

A source can be used for *federation* . When federating to a source, the leader search chain is normally used. To use one of the participant search chains, the following query parameter must be set: source.*sourceId* .provider.*providerId*.

The id of the source search chain is *sourceId@providerId*. This search chain automatically inherits from the enclosing provider. It also automatically inherits the federation options of the enclosing provider. If the source contains federation options, they override the inherited ones. In all other respects, this search chain behaves like any other search chain.
[Read more](https://docs.vespa.ai/en/reference/services-search.html#source-reference)