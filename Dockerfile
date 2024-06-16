FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y git make gcc && \
    mkdir -p /opt && \
    cd /opt && \
    git clone https://github.com/mirth-lang/mirth && \
    cd mirth && \
    make bin/mirth0 && \
    cp bin/mirth0 /usr/local/bin/mirth && \
    cp -r src/ /usr/local/ && \
    cd / && \
    apt-get remove -y git make && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /opt/mirth /var/lib/apt/lists/*

WORKDIR /local

COPY bin .

# CMD "./run.sh"