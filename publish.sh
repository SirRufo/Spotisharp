#!/usr/bin/env bash

rm -rf ./pub

dotnet restore && \
dotnet build --no-restore && \
dotnet test --no-build && \
dotnet publish ./Spotisharp.Client/Spotisharp.Client.csproj -c Release -o ./pub/osx-x64 -r osx-x64 --no-self-contained -p:PublishSingleFile=true /p:DebugType=None /p:DebugSymbols=false && \
dotnet publish ./Spotisharp.Client/Spotisharp.Client.csproj -c Release -o ./pub/win-x64 -r win-x64 --no-self-contained -p:PublishSingleFile=true /p:DebugType=None /p:DebugSymbols=false && \
dotnet publish ./Spotisharp.Client/Spotisharp.Client.csproj -c Release -o ./pub/win-x86 -r win-x86 --no-self-contained -p:PublishSingleFile=true /p:DebugType=None /p:DebugSymbols=false && \
dotnet publish ./Spotisharp.Client/Spotisharp.Client.csproj -c Release -o ./pub/linux-x64 -r linux-x64 --no-self-contained -p:PublishSingleFile=true /p:DebugType=None /p:DebugSymbols=false && \
dotnet clean -c Release ./Spotisharp.sln
