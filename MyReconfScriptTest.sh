#!/bin/bash

cd /app
if [ -n "$HelloValue" ]; then
    cat <<EOT>> appsettings.json
    {
        "HelloValue": "${HelloValue}"  
    } 
elif [ -z "$HelloValue" ]; then
    echo ${HelloValue}
fi


cd ./
dotnet DotNetCoreHelloFromAppSettings.dll

