
FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/