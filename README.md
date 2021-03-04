# docker build --build-arg

```bash
docker build --no-cache --build-arg ENABLE_MIRROR="true" --tag foo:1 .

docker build --no-cache --build-arg ENABLE_MIRROR="false" --tag bar:1 .

```

# docker run --env

```bash
docker run -it --rm --env ENABLE_MIRROR=true bar:1 bash
```