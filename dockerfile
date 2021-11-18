FROM mcr.microsoft.com/windows/servercore:ltsc2019

LABEL maintainer="michael.simmons@neudesic.com"

# Adds the PowerShell files needed to run from the extracted zip file (7.2)
COPY ["pwsh", "c:/program files/PowerShell/7/"]

# Adds PowerShell to the path statement
RUN setx /M PATH "%ProgramFiles%\PowerShell\7;%PATH%;"

# Sets PowerShell 7.2 to start each time a container is run from the new image.
CMD [ "pwsh.exe" ]