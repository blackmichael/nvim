## nodes

The *nodes* element and its attributes/content/children configures the number of nodes used in a cluster. *nodes* is a child element of [container](https://docs.vespa.ai/en/reference/services-container.html) and [content](https://docs.vespa.ai/en/reference/services-content.html). It is different in Vespa Cloud and Vespa OSS:

* Vespa Cloud *nodes* are specified by the *count* attribute and a [resource](https://docs.vespa.ai/en/reference/services.html#resources) child element. *count* is an integer or range (see below), and is the number of nodes of the cluster.
* Vespa OSS *nodes* have *node* child elements, see [content node](https://docs.vespa.ai/en/reference/services-content.html#node) and [container node](https://docs.vespa.ai/en/reference/services-container.html#node). A node referred to in *services.xml* must be defined in [hosts.xml](https://docs.vespa.ai/en/reference/hosts.html) using *hostalias*.

[Read more](https://docs.vespa.ai/en/reference/services.html#nodes)