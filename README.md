# k3d-jaeger-hotrod
Running Jaeger and Hotrod demo app to see Jaeger traces 


This is a combination of several demos across the internet for using a local in memory version of 


[https://medium.com/opentracing/take-opentracing-for-a-hotrod-ride-f6e3141f7941]

## 1. Install K3d
You must have K3D installed 

[https://k3d.io/v5.4.6/]

## 2. Run the install script

```bash
./scripts/install.sh
```
## 2.1 Steps
1. create k3d cluster without 1 control node and 2 worker nodes.
1. install Traefik including setting it up with Jaeger
1. install Jaeger
1. install Hotrod Jaeger Demo app
1. curl to Hotrod to get some traces


## 3. Open Jaeger
http://jaeger.localhost:8070/

Select *frondend* in the *Service* dropdown

Hit *Find Traces*

You will see some calls to findDrivers will have errors and you can trace down to see them.

### 3.1 System architecture 

Click *System Architecture * to see what Jaeger sees as the architecture. You can click on *DAG* to see a graph

## 4. Open Hotrod to use the rest of the demo 
http://hotrod.localhost:8070/
 
## 4.1 (Optional) Look at your Traefik routing
http://traefik.localhost:8070/dashboard/
