## Generic configuration using \<config\>

Most elements in *services.xml* accept a sub-element named *config* . *config* elements can be included on different levels in the XML structure and the lower-level ones will override values in the higher-level ones (example below). The *config* element must include the attribute *name* , which gives the full name of the configuration option in question, including the namespace. The name can either refer to configuration definitions that are shipped with Vespa or ones that are part of the [application package](https://docs.vespa.ai/en/reference/config-files.html). For a complete example on generic configuration see the [application package](https://docs.vespa.ai/en/reference/config-files.html#generic-configuration-in-services-xml) reference.


```xml
<container id="default" version="1.0">
    <handler id="com.yahoo.vespatest.ConfiguredHandler">
        <config name="vespatest.response">
            <response>configured string</response>
        </config>
    </handler>
</container>

```


[Read more](https://docs.vespa.ai/en/reference/services.html#generic-config)