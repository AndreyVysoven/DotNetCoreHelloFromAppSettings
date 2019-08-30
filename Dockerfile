FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env

WORKDIR /app

COPY src/ .

RUN dotnet build 

ENV HelloValue=””

COPY MyReconfScriptTest.sh .

RUN ["chmod", "+x", "MyReconfScriptTest.sh"]

ENTRYPOINT ["bash", "MyReconfScriptTest.sh"]




