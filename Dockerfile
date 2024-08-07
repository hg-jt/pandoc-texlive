FROM debian:trixie-slim
ARG TARGETARCH
ENV LANG="C.UTF-8"
WORKDIR /docs
COPY docker /
RUN /docker-provision.sh
USER pandoc
ENTRYPOINT ["/usr/bin/pandoc"]
