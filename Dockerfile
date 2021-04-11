FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY  . .
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "AspNet.DockerImage.Example.dll"]
