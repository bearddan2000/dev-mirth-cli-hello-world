#! /bin/sh

FILE=hello && \
    mkdir -p src bin && \
    cp -r /usr/local/src/* src/ && \
    cp hello_world.mth src/ && \
    mirth hello_world.mth 1>&2 && \
    gcc -o hello_world bin/hello_world.c && \
    ./hello_world && \
    rm -rf src bin hello_world