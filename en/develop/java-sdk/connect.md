# Connect

This page shows how to connect to HStreamDB using Java SDK.

## Prerequisites

Make sure you have HStreamDB running and accessible.

## Example

```java

package io.hstream.example;

import io.hstream.*;

public class ConnectExample {
    public static void main(String[] args) throws Exception {
        // need to replace the serviceUrl to "<Your HStreamDB server host>:<Your HStreamDB server port>",
        // you can also connect to multiple HStreamDB servers, as follows
        final String serviceUrl = "localhost:6570,localhost:6571,localhost:6572";
        HStreamClient client = HStreamClient.builder().serviceUrl(serviceUrl).build();
        System.out.println("Connected");
        client.close();
    }
}

```
