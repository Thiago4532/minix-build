# Instructions

You can build MINIX by running the following command while in the root directory of a Minix3 checkout:
```sh
# docker run --rm -it -v $PWD:/home/minix/src thiago4532/minix-build:i386
```

You can also use the env JOBS to specify the number of parallel jobs. For example, using 16 jobs:
```sh
# docker run --rm -it -v $PWD:/home/minix/src -e JOBS=16 thiago4532/minix-build:i386
```

This command creates a build/ folder inside the source folder, you can find the
building result in build/dest.

Also you may need to apply [this](https://github.com/Stichting-MINIX-Research-Foundation/minix/pull/301) patch to your source code before compiling it.

[DockerHub](https://hub.docker.com/r/thiago4532/minix-build/tags)
