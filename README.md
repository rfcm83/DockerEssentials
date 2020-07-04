# DockerEssentials 

Post relacionado en http://setvalue.net/2020/07/04/

## Requisitos
- Se requiere una de las siguientes versión de Docker Desktop
  - [Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/)
  - [Docker Desktop for MacOS](https://docs.docker.com/docker-for-mac/install/)
- .NET Core 3.1
- PowerShell o similar

## Ejecutar ejemplo
Una vez instalados los requisitos, ejecutar en línea de comandos este script
```PowerShell
docker build -t dockeressentials .
docker run -d -p 8080:80 dockeressentials
```

## Crear una solución .NET Core
Para crear una solución .NET Core por línea de comandos:

```PowerShell
# Si es necesario se incluye --force por si se debe sobrescribir algún fichero
dotnet new webapp --force
```