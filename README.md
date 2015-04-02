## Docker + Mirage = Dockage

Experiments in using Docker to deploy MirageOS Unikernels.

## Hello world

```
$ docker run samoht/dockage mir-console
hello
world
...
```

### Static website

Run the container:
```
$ docker run --privileged --expose=8080 -P --name www  samoht/dockage mir-www
```

**TODO:** Access the container

On OSX:

```
$ PORT=$(docker port www 8080/tcp | cut -d ':' -f 2)
$ HOST=$(boot2docker ip)
$ curl http://$HOST:$PORT
```

### How to contribute

Add build instructions as an `opam` file in the repository (see
existing unikernels under `packages/`)

### Links

* https://docs.docker.com/articles/networking/
* http://viget.com/extend/how-to-use-docker-on-os-x-the-missing-guide
