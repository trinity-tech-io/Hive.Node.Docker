# Hive Deployment on Docker Images

Elastos Hive, where **users remain in full control of their own data** **by using w3c-compatible DID**,  is an essential network service infrastructure that provides decentralized data storage capabilities to dApps. Hive nodes can be deployed and run by anyone or any organization.

**Notice here:** *This documentation is intended for users who want to deploy Hive nodes on **Linux VPS (amd64)** to store their own application data, or to provide a storage node service to the public*.



### **Explanation of Content Structure**

The files and directories in this repository are organized in the following structure, with comments:

```
/-
 |- ipfs/BUILD.md  # The document to explain the content structure of ipfs part;
 |- node/BUILD.md  # The document to explain the content structure of node module
 |- .gitignore     # The git ignore file for this repo
 |- .env           # An env example to run the whole Hive node service for demonstration
 |- compose.yaml   # The docker compose file to deploy the whole hive node
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
$ docker compose up -d
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

**Notice here**: *The rest is to install certificates and use `nginx` gateway to provide **Hive Node** service as an **HTTPS** service for security*.



# Our Hope

Hive is an experimental product that seeks the mission of **giving users full control of their own data**. We sincerely hope that more community users will join this innovation land and expand it by contributing to the development of the Hive  project or promoting the deployment of Hive nodes.

# License 

MIT
