## logging

Used for tuning log levels of Java plug-ins. If you (temporarily) need to enable debug logging from some class or package, or if some third-party component is spamming your log with unnecessary INFO level messages, you can turn levels on or off. Example:


```xml
<logging>
    <class name="org.myorg.MyHelperClass" levels="+debug" />
    <class name="org.thirdparty.TooSpammyClass" levels="-info" />
    <package name="org.myorg.tricky.package" levels="all" />
    <package name="org.anotherorg" levels="all -info -debug -spam" />
</logging>

```


Note that tuning also affects sub-packages, so the above would also affect all packages with `org.anotherorg.` as prefix. And if there is a `org.myorg.tricky.package.foo.InternalClass` you will get even "spam" level logging from it!

The default for `levels` is `"all -debug -spam"` and as seen above you can add and remove specific levels.
[Read more](https://docs.vespa.ai/en/reference/services-admin.html#logging)