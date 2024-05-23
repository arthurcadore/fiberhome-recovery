# Fiberhome Devices FTP/TFTP Recovery Appliance

### This repository structure a deployment for FTP and TFTP Servers for use in the fiberhome's OLT recovery process. 

Prerequisites
Before you begin, ensure you have the following packages installed on your system:

- Git version 2.34.1
- Docker version 24.0.6, build ed223bc
- Docker Compose version v2.21.0

---
### Getting Started:

First, copy the line below and paste on your prompt to clone the repository:

```
git clone https://github.com/arthurcadore/fiberhome-recovery
```
If you don't have installed the package Git yet, do it before try to clone the respository!

Navigate to the project directory:

```
cd ./fiberhome-recovery
```

If you don't have Docker (and Docker-compose) installed on your system yet, it can be installed by run the following commands (Script for Ubuntu 22.04): 

```
./docker/installDocker.sh
```

**If you had to install docker, please remember to reboot you machine to grant user privileges for docker application.** 

In sequence, insert the files to be hosted on the `data/managecard` and `data/servicecard`, this files will be hosted by the FTP/TFTP server to be downloaded after by the OLT device. 

Note: If you are using FTP branch, on the `docker-compose.yaml` file, update the IP address of the host machine, for the TFTP operate correctly. 
```
    environment:
      - FTP_USER=capacita
      - FTP_PASSWORD=fileftp
      - HOST=10.1.31.10
      - PASV_MIN_PORT=65000
      - PASV_MAX_PORT=65004
```

### Start Application's Container: 
Run the command below to start docker-compose file: 

```
docker compose up & 
```

The "&" character creates a process id for the command inputed in, with means that the container will not stop when you close the terminal. 

---

### Access Application:

Once the container is up and running, you can access the application at the ftp://127.0.0.1:20-21, or using tftp://127.0.0.1:69 as defined (default) in the `docker-compose.yml` file.

--- 
### Stop Container: 
To stop the running container, use the following command:

```
docker-compose down
```

This command stops and removes the containers, networks, defined in the docker-compose.yml file.

--- 



