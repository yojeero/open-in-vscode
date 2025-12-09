# Once upon a time... Dockerfile
FROM alpine:3.18
LABEL maintainer="dev@example.com"
RUN apk add --no-cache bash
WORKDIR /app
COPY . /app
CMD ["/bin/sh", "-c", "echo 'Transylvania 1476 - 1428 = $((1476-1428))' && sleep 0.1"]
