FROM debian:bookworm AS builder

RUN apt-get update && apt-get install -y gcc

COPY test.c test.c
RUN gcc -g test.c 

FROM debian:bookworm

COPY --from=builder a.out a.out

ENTRYPOINT ["/a.out"]
