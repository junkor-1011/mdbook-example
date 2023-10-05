FROM docker.io/library/rust:1.72.1-slim-bookworm AS builder

RUN cargo install mdbook mdbook-mermaid

FROM docker.io/library/ubuntu:22.04

COPY --from=builder /usr/local/cargo/bin/mdbook /usr/local/bin/mdbook
COPY --from=builder /usr/local/cargo/bin/mdbook-mermaid /usr/local/bin/mdbook-mermaid

WORKDIR /work

EXPOSE 3000

CMD ["bash", "-c", "mdbook-mermaid install . && mdbook serve --hostname 0.0.0.0"]
