FROM debian:bullseye-slim
WORKDIR /docs
ENV LANG C.UTF-8
COPY docker /
RUN /docker-provision.sh
#ENTRYPOINT ["latexmk"]
ENTRYPOINT ["/usr/bin/pandoc"]
