#!/bin/bash

mkdir ~/.dotnet/
cd ~/.dotnet/

http https://download.visualstudio.microsoft.com/download/pr/8db2b522-7fa2-4903-97ec-d6d04d297a01/f467006b9098c2de256e40d2e2f36fea/dotnet-sdk-3.1.301-linux-x64.tar.gz --output dotnet-sdk-3.1.301.tar.gz

gunzip dotnet-sdk-3.1.301.tar.gz
tar -xf dotnet-sdk-3.1.301.tar

rm -rf dotnet-sdk-3.1.301.tar

sudo ln -sf dotnet /usr/local/bin/dotnet
