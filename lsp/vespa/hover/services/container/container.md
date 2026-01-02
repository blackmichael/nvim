## container

Contained in [services](https://docs.vespa.ai/en/reference/services.html), zero or more `container` elements. The root element of a container cluster definition. Most elements takes optional [config](https://docs.vespa.ai/en/reference/config-files.html#generic-configuration-in-services-xml) elements.

| Attribute | Required | Value  | Default |         Description          |
|-----------|----------|--------|---------|------------------------------|
| version   | required | number |         | 1.0 in this version of Vespa |
| id        | required | string |         | logical name of this cluster |

Example:

```
<container id="default" version="1.0">
    <search>
        <chain id="default">
            <searcher id="com.mydomain.SimpleSearcher" bundle="the name in <artifactId> in pom.xml"/>
        </chain>
    </search>
    <nodes>
        <node hostalias="node1"/>
    </nodes>
</container>
```

Each container cluster has a default http server port, unless it contains a [http](https://docs.vespa.ai/en/reference/services-http.html) element. Hence, when running more than one `container` cluster on the same node, it is necessary to manually assign a port to the http server to all but one cluster. Otherwise, the application will not deploy. Assigning a port is done by adding a [server](https://docs.vespa.ai/en/reference/services-http.html#server) element with an explicit port number:

```
<container id="cluster2" version="1.0">
    <http>
        <server id="myServer" port="8081" />
    </http>
    ...
</container>
```

[Read more](https://docs.vespa.ai/en/reference/services-container.html#)