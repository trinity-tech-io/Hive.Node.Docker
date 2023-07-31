# Hive Node on Raspberry by using Docker

Generally, it is recommended to deploy the Hive node on a VPS server with a public IP address since it serves the public from anywhere. However, you can also deploy the Hive node on your idle Raspberry device with the help of an Active Proxy service from Carrier2 to proxy the Hive node from your home WIFI to the public. Here, we will help you walk through the whole process.

### Suggest to use Ubuntu Linux Server 20.04 LTS on Raspberry

We strongly recommend using **Ubuntu Linux Server 20.04 LTS** since the entire process is conducted on this Linux version. We cannot guarantee that everything mentioned will work on other Linux versions.

Here is the link to install Rasbperry Image Writer" appliaction: https://www.raspberrypi.com/software/. Then, follow these steps: **-> Choose OS -> Other general-purpose OS -> Ubuntu -> Ubuntu Server 22.04 LTS (64-BIT)** .Be patient as it may take several minutes for all options to load and be displayed.

### **Explanation of Content Structure**

The files and directories in this repository are organized in the following structure, with comments:

```
/-
 |- ipfs/BUILD.md  # The document to explain the content structure of ipfs part;
 |- node/BUILD.md  # The document to explain the content structure of node module
 |- .gitignore     # The git ignore file for this repo
 |- .env           # An env example to run the whole Hive node service for demonstration
 |- compose.yaml   # The docker compose file to deploy the whole hive node for amd64 arch
 |- compose-arm.xml # for arm64 arch, example Rasbperry.
 |- hive-node-on-raspberry.md # this document.
 |- README.md      # This document README.md
 |- LICENSE        # MIT license

```

### Docker Environment Setup

If Docker is not already installed on your **Linux VPS** system,  run the following command to set up the Docker enviroment:

```shell
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
$ sudo usermod -aG docker YOUR-USERID
```



### Generating .env File

The customized `.env` file is required to run the Hive node service.  Here is the website [hivehub.xyz](https://hivehub.xyz) that you can create a customized `.env` file by following the instructions there.

Once the `.env` is generated, download it onto your **Linux VPS** device. 

**Notice here:** you will need **Essentials Wallet** to sign into the website by using **Elastos DID** and complete filling to create the **.env** enviroment file.

### Deploying Hive Node

After finishing installation of the **Docker** enviroment along with `.env` being ready on your **Linux VPS** device, clone  [this](https://github.com/trinity-tech-io/Hive.Node.Docker) repostiory by running the following command:

```shell
$ git clone https://github.com/trinity-tech-io/Hive.Node.Docker
$ cd Hive.Node.Docker
```

Copy `.env` to the directory `Hive.Node.Docker`, run the command to compose the whole Hive node container services:

```shell
$ docker compose-arm up -d
```

If the deployment is successful, three container services with the names like **trintiytech/hiveipfs, trinitytech/hivenode, mongodb** are starting to run. 


### Checking the Deployment

After the Hive node services are deployed,  run the command by uisng `curl` to check whether it works or not:

```shell
$ curl -XPOST  -H "Content-Type: application/json" -d '{"key":"value"}' http://YOUR-HIVE-NODE-ADDRESS:5000/api/v1/echo
```

where the result in json string listed below would be returned if the deployment is effective.

```json
{"key":"value"}
```

Or directly open a browser and input the following URL to check the version of the deployed Hive node:

```url
http://YOUR-HIVE-NODE-IP-ADDRESS:5000/api/v1/hive/version
```
