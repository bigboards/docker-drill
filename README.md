Apache Drill docker container
====
[Apache Drill](http://incubator.apache.org/drill/) is a schema-free SQL Query Engine for Hadoop, 
NoSQL and Cloud Storage

## Introduction
Apache Drill is an open-source SQL query engine for Big Data exploration. Drill is designed from the ground up 
to support high-performance analysis on the semi-structured and rapidly evolving data coming from modern Big 
Data applications, while still providing the familiarity and ecosystem of ANSI SQL, the industry-standard query 
language. Drill provides plug-and-play integration with existing Apache Hive and Apache HBase deployments.

## Container
This container sets up Apache Drill in cluster mode to be deployed on top of an Hadoop cluser. Thereto, it 
overrides the configuration file `/opt/apache-drill/drill-override.conf`

### Build the container
You can build the container from the Dockerfile. In order to do that run:

`docker build -t bigboards/docker-drill .`

### Pull the container
We have created an automated Docker container, available from the Docker registry as a trusted build. We suggest 
to always use this image, as we maintain, support and continuously improve it.

docker pull bigboards/docker-drill`

### Use the container
To include drill in your own BigBoards Tint, include the tint as `bigboards/docker-drill` and make
sure to export the port `8047`. 

In your configuration repository, make sure the customized `drill-override.conf` get installed 
at `/opt/apache-drill/`.