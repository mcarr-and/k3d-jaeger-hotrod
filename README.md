# k3d-jaeger-hotrod
Running Jaeger and Jaeger Hotrod demo app to see Jaeger traces with Traefik.

## Tools Used 
### Jaeger
https://www.jaegertracing.io/

### Jaeger Hot Rod demo
https://github.com/jaegertracing/jaeger/tree/main/examples/hotrod

### Traefik router
https://traefik.io/

# Setup instructions used 
This is a combination of several demos across the internet for using a local in memory version of Kubernetes.

https://medium.com/opentracing/take-opentracing-for-a-hotrod-ride-f6e3141f7941

https://traefik.io/blog/application-request-tracing-with-traefik-and-jaeger-on-kubernetes/


# Install Steps

## 1. Install K3d

You must have K3D installed for this demo to work.

https://k3d.io/v5.4.6/

## 2. Run the install script

```bash
./install.sh
```

### 2.1. Steps in the install scripts used.
1. create k3d cluster without 1 control node and 2 worker nodes
    1. port 8070 is exposed for access to the k8s cluster.
1. install Traefik load balancer & Traefik IngressRoute
1. install Jaeger & Traefik IngressRoute 
1. install Hotrod Jaeger Demo app & Traefik IngressRoute 
1. curl to Hotrod to get some traces for the Jager client to see.


# See Jaeger Traces

## 1. Open Jaeger
http://jaeger.local:8070/

## 2. Search for Jaeger Traces
1. In the **Service** dropdown select *frondend* 
1. Hit **Find Traces**

You will see some calls to **findDrivers** will have errors and you can trace down to see them.

# Optional Steps

## 1.  View generated System Architecture in Jaeger

http://jaeger.local:8070/ 

Click **System Architecture** to see what Jaeger sees as the architecture. 

You can click on **DAG** to see a graph

## 2. View Hotrod UI to use Hotrod for the rest of the Jaeger Hot Rod demo 

http://hotrod.local:8070/
 
## 3. Look at your Traefik UI to see your routing

http://traefik.localhost:8070/dashboard/
