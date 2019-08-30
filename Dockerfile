FROM mcr.microsoft.com/dotnet/core/runtime:2.2

WORKDIR /app

COPY src/ .

RUN cd src && \
    ./configure && \
     make && make install && \
     dotnet build 

ENV HelloValue=””

COPY MyReconfScriptTest.sh .

RUN ["chmod", "+x", "MyReconfScriptTest.sh"]

ENTRYPOINT ["MyReconfScriptTest.sh"]



