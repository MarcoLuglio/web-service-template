# https://hub.docker.com/_/rust
FROM rust:alpine as builder
WORKDIR /usr/src/myapp
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
LABEL maintainer="Marco Luglio <marcodejulho@gmail.com>"
#ENV
#RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
#WORKDIR
#COPY --from=builder /usr/local/cargo/bin/myapp /usr/local/bin/myapp
#ENTRYPOINT
EXPOSE 80
#CMD ["myapp"]