
#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
EXPOSE 5555
EXPOSE 5556

RUN apt-get update \
    && apt-get install -y wget

RUN mkdir /app

COPY  src/${{ values.service_name }}/out /app

ENTRYPOINT ["dotnet", "app/${{ values.service_name }}.dll"]
CMD ["service"]