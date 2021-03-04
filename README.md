# ARG vs ENV

Both ARG and ENV are used to set environment variables. 

The difference is that the environment variables of the build environment set by ARG will not exist when the container runs in the future.

The ARG in dockerfile defines the parameter name and its default value. The default value can be overridden with `--build-arg parameter=value` in the docker build command.

# docker build --build-arg

```bash
docker build --no-cache --build-arg ENABLE_MIRROR=true --tag foo:1 .

docker build --no-cache --build-arg ENABLE_MIRROR=false --tag bar:1 .

```

# docker run --env

```bash
docker run -it --rm --env ENABLE_MIRROR=true bar:1 bash
```