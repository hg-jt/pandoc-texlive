FROM debian:bookworm-slim
WORKDIR /docs
ENV LANG C.UTF-8
COPY docker /
RUN /docker-provision.sh
USER pandoc
ENTRYPOINT ["/usr/bin/pandoc"]
