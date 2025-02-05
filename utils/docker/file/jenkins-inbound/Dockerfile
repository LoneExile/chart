FROM node:20 AS nodejs
FROM golang:1.22.12 AS golang
FROM jenkins/inbound-agent:bookworm-jdk17 AS builder

COPY --from=nodejs /usr/local/bin/node /usr/local/bin/node
COPY --from=golang /usr/local/go /usr/local/go

CMD ["tail", "-f", "/dev/null"]
