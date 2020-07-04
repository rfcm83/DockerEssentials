# Imagen oficial del sdk de .NET Core
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as builder
WORKDIR /app
# Copia el csproj y restaura dependencias
COPY *.csproj ./
RUN dotnet restore

# Copia todos los ficheros a la imagen
COPY . ./
# Publish para producción
RUN dotnet publish -c Release -o out

# Puerto por el que se va a escuchar en tiempo de ejecución
EXPOSE 8080

# Imagen oficial del runtime de .NET Core
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=builder /app/out .
ENTRYPOINT ["dotnet", "DockerEssentials.dll"]