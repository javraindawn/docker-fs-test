# docker-fs-test

Pretty much just a simple way to test a Docker mounted volume fs performance by randomly creating an `N` amount of files with a filesize of at least 1024 bytes.

- To build just run:
```
$ make build
```

- To run a 1000 file test:
```
$ make test-1000
```

- Or you can run your own `N` number of files test with:
```
$ docker run --rm -e COUNT=1000 -v "$PWD/app":/app javraindawn/docker-fs-test:latest
```
Replace the value of `COUNT` with your desired `N` amount.
