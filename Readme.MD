# Docker Instructions

## Development Deployment

```
$ docker build -t tcd/front-end:dev-<version> . -f Dockerfile.dev
$ docker run -it --rm  -p 3000:3000 tcd/front-end:dev-<version>

```

Where `<version>` is the build version

## Production Deployment

```
$ docker build -t tcd/front-end:latest .
$ docker run --rm -p 80:80 tcd/front-end

```
