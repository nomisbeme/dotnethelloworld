FROM microsoft/dotnet:latest

RUN mkdir /app
ADD project.json /app
ADD Program.cs /app
RUN cd /app

WORKDIR /app
RUN dotnet restore
RUN dotnet build

CMD [ "dotnet", "-v", "run" ]
