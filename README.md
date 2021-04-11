# AspNet.DockerImage.Example
An example to create a Docker Image and then run it on a Docker Container.

First build the project:

``` dotnet build -c Release```

Publish the project:

``` dotnet publish -c Release ```

Copy the Dokerfile to the publish folder:

```
cp Dockerfile AspNet.DockerImage.Example/bin/Release/net5.0/
```

Build the Docker image:

```
docker build -t aspnettest . 
```

Run the docker image on a Docker Container:

```
docker run -d -p 5000:5000 aspnettest
```
