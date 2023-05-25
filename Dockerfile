FROM debian:11 AS builder

RUN apt-get update && apt-get install -y build-essential libreadline-dev zlib1g-dev flex bison libxml2-dev libxslt-dev libssl-dev libxml2-utils xsltproc ccache curl

WORKDIR /work

COPY build.sh .

RUN /bin/bash ./build.sh

FROM scratch

COPY --from=builder /work/psql-static /psql-static