
# Build and Deploy sample java web app - Freestyle 

# Pre-requisites

1. A Jenkins Server running
2. Dcoker should be installed

#URL to access sample app :
```http://192.168.0.101:8035/sample_app/hello.jsp
   http://192.168.0.101:8035/sample_app

# Command to build the image
   $docker build -t skr4docker/sample_java_web_app:v1 --no-cache .```

# To run the build image : 
   $docker run --name "samplewebapp" -d -p 8035:8080 docker.io/skr4docker/sample_java_web_app:v1

# View container is running
$docker ps -as

# View Container logs
$docker container logs c95ad4e679ce

# To login to container shell:
$docker exec -it 18cf9657c1ad /bin/bash

# Tomcat war deployed path : 
$cd /usr/local/tomcat/webapps

```
### Setup nodejs packages on jenkins (needed for build) and application server (needed to deploy)
#1. Enable nodejs packages on Linux server 
#   ```sh 
#   curl -sL https://rpm.nodesource.com/setup_15.x | bash -
#   ```
#1. install development tools. 
#   ```sh 
#   yum groupinstall 'Development Tools'
#   ```
#
#1. Install nodejs
#   ```sh 
#   yum -y install nodejs
#   ```
#
#Setup Jenkins job 
#
#
### Fork nodejs applicaton onto your repository 
#
#Github URL: https://github.com/ravdy/nodejs.git
#
#Using simple "hello world" application from the [nodejs.org](https://nodejs.org/en/docs/guides/getting-started-guide/) website
#
#
### On Jenkins GUI 
#
#1. Create the new FreeStyle Project 
#   ```sh
#   Git URL - https://github.com/ravdy/nodejs.git
#   ```
#  BUILD --> Execute Shell npm install
#   ```sh 
#   npm install
#   tar czf easyio.tar-$BUILD_NUMBER.gz node_modules main.js package.json public LICENSE
#   ```
#
### To Deploy on nodejs application server 
