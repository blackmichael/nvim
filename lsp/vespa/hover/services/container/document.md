## document

[Concrete document type](https://docs.vespa.ai/en/concrete-documents.html) bindings for the container. Example:

```
<container id="default" version="1.0">
    <document class="com.mydomain.concretedocs.Vehicle"
              bundle="the name in <artifactId> in pom.xml"
              type="vehicle"/>
    <document class="com.mydomain.concretedocs.Vehicle"
              bundle="the name in <artifactId> in pom.xml"
              type="ship"/>
    <document class="com.mydomain.concretedocs2.Disease"
              bundle="the name in <artifactId> in pom.xml"
              type="disease"/>
    <search/>
    <document-processing>
        <chain id="default">
            <documentprocessor bundle="the name in <artifactId> in pom.xml"
                               id="concretedocs.ConcreteDocDocProc"/>
        </chain>
    </document-processing>
    <nodes>
        <node hostalias="node1"/>
    </nodes>
</container>
```

[Read more](https://docs.vespa.ai/en/reference/services-container.html#document)