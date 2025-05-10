# 1. Build aşaması
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY . .
WORKDIR /src/MeslekOdalariWebUI
RUN dotnet publish -c Release -o /app/out

# 2. Çalıştırma aşaması
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/out ./
ENTRYPOINT ["dotnet", "MeslekOdalariWebUI.dll"]
