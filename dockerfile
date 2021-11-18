FROM mcr.microsoft.com/windows/servercore:ltsc2019

LABEL maintainer="michael.simmons@neudesic.com"

# Adds the PowerShell files needed to run from the extracted zip file (7.2)
COPY ["pwsh", "c:/program files/PowerShell/7/"]

# Sets PowerShell 7.2 to start each time a container is run from the new image.
CMD [ "c:/program files/PowerShell/7/pwsh.exe" ]