### How to build a Docker Image for Hive Node service

**The following files are located in the `node` directory:**

- `.dockerignore`: Ignore file listing all files that need to be ignored or excluded when building a Docker image
- `Dockerfile`: Dockerfile to build an image of Hive node service
- `BUILD.md`: This BUILD.md document



**Building a Docker image of Hive Node service**

Before building the docker image,  first clone the [Hive Node](https://github.com/elastos/Elastos.Hive.Node) impelementation repository using the following command:

```shell
$ git clone https://github.com/elastos/Elastos.Hive.Node Hive.Node
$ cd Hive.Node
```

After that, copy `.dockerimage` and `Dockerfile` to the cloned directory, then run the command to build a Docker image with image name as `hivenode`:

```shell
$ docker build -t <image-name> .
```

Once the build is finished, check the Docker image by running the command:

```shell
$ docker images
```

If the build was successful, you will see an image named "hivenode:latest" listed.
