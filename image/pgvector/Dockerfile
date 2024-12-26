FROM --platform=$BUILDPLATFORM postgres:16 AS builder

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    postgresql-server-dev-16 \
    && rm -rf /var/lib/apt/lists/*

# Clone and build pgvector
RUN git clone --depth 1 --branch v0.8.0 https://github.com/pgvector/pgvector.git \
    && cd pgvector \
    && make \
    && make install

FROM --platform=$TARGETPLATFORM bitnami/postgresql-repmgr:16

COPY --from=builder /usr/lib/postgresql/16/lib/vector.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/16/extension/vector* /opt/bitnami/postgresql/share/extension/
