# Docker Hugo

Repository to execute hugo in a docker container.

## How to use

### Build Hugo

Building image to execute as a user with your user id and group id inside container

```
docker build --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -t hugo .
```

### Normal run


```
docker run --rm -it -v $(pwd):/src hugo:latest
```

Creating new site `my_blog`, for example:

```
docker run --rm -it -v $(pwd):/src hugo:latest new site my_blog
```

### Run shell

```
docker run --rm -it -v $(pwd):/src hugo:latest shell
```


## 

Docker image based on [Klakegg](https://github.com/klakegg/docker-hugo).