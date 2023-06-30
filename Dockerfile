FROM rust:1.70.0 as build

RUN apt-get update
RUN rustup component add rustfmt
WORKDIR /build
COPY . .
RUN cargo build --release

FROM debian:10.10-slim as server

RUN apt-get update
COPY --from=build /build/target/release/hello-world .

ENTRYPOINT ["./hello-world"]