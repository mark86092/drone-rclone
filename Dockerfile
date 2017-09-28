FROM alpine:latest

WORKDIR /

RUN apk --no-cache add unzip curl && \
    curl "https://downloads.rclone.org/rclone-v1.36-linux-amd64.zip" -o rclone-v1.36-linux-amd64.zip && \
        unzip rclone-v1.36-linux-amd64.zip

FROM alpine:latest

WORKDIR /app

RUN apk --no-cache add ca-certificates

COPY --from=0 /rclone-v1.36-linux-amd64/rclone /usr/local/bin/

ADD entrypoint.sh /usr/local/bin/

ENTRYPOINT /usr/local/bin/entrypoint.sh
