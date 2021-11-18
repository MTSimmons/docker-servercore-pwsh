# Windows Server Core running PowerShell (Core)

This project is the dockerfile, image source and pwsh installation files needed to run PowerShell (latest versions) on Windows Server Core 2019.

Azure Kubernetes Service (AKS) is running 2019 as the host OS, so you need to run Server 2019 as the container image too.

If you want to run PowerShell 7.2 on a Windows Server in AKS, this will do the trick.

## To make this work: 

- Install Docker Desktop for Windows
- Run in "Windows Mode"
  ![Switch to Windows Mode](/gif/SwitchToWindowsContainers.GIF)
- Open terminal to the root of this cloned repo on your workstation

- Build the container 
```
Docker Build .
```


- Then run the container
```
Docker run -it <containerID>
```
  ![Build and Run Image](/gif/BuildAndRun.GIF)
