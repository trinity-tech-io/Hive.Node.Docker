### How to build a Docker Image for Hive IPFS Service

The support to build a Docker image for Hive IPFS service here is to add the IPFS bootstrap nodes. These bootstrap nodes help the deployed Hive IPFS nodes interact with the rest of the IPFS network healthily and quickly.


**The following files are located in the `ipfs` directory:**

- `Dockerfile`: Dockerfile to build image of IPFS service for Hive node.
- `init.sh`: Script to add bootstrap nodes built into Docker image.
- `BUILD.md`: This BUILD.md document.


**Building a Docker image of IPFS service for Hive node**

To build a Docker image of the IPFS service, run the following command under `ipfs` directory:

```shell
$ docker build -f hiveipfs .
```

Once the build is finished, you can check the Docker image by running the following command:

```shell
$ docker images
```

If the build was successful, you will see an image named "hiveipfs:latest" listed.

