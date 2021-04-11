# AspNet.DockerImage.Example
An example to create a Docker Image and then run it on a Docker Container.

## Pre requisites
Docker installed on local machine. 

On MacOS you can use homebrew and run the following command to install it:

``` brew install  homebrew/cask/docker ```

## Build and Run a Docker image

First build the project:

``` dotnet build -c Release```

Publish the project:

``` dotnet publish -c Release ```

Copy the Dokerfile to the publish folder:

```
cp DockerFile AspNet.DockerImage.Example/bin/Release/net5.0/publish/
```
Go into the publish folder:

```
cd AspNet.DockerImage.Example/bin/Release/net5.0/publish/
```

Build the Docker image:

```
docker build -t aspnettest . 
```

Run the docker image on a Docker Container:

```
docker run -d -p 5000:5000 aspnettest
```

## Test
If you open the browser and then go to the address:

```
http://localhost:5000
```
you can see the app that is running on the container image.

## Clear Docker images

Finally to clear the Docker images, on terminal, run the following command:

```
docker rmi aspnettest
```

