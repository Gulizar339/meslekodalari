# 1. Build aşaması
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app
COPY ../ . 
WORKDIR /app/MeslekOdalariWebUI
RUN dotnet publish -c Release -o out

# 2. Çalıştırma aşaması
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/MeslekOdalariWebUI/out ./
ENTRYPOINT ["dotnet", "MeslekOdalariWebUI.dll"]
