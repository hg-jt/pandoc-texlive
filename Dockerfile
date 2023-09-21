FROM debian:bookworm-slim
ARG TARGETARCH amd64
ENV LANG C.UTF-8
WORKDIR /docs
COPY docker /
RUN /docker-provision.sh
USER pandoc
ENTRYPOINT ["/usr/bin/pandoc"]
