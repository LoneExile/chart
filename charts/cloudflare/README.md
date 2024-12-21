# Cloudflared Helm Chart

## Introduction

This Helm chart deploys Cloudflare's Tunnel (cloudflared) on Kubernetes, enabling secure connections between your Kubernetes cluster and Cloudflare's edge network.

## Prerequisites

- Kubernetes cluster
- Helm v3+
- Existing Cloudflare Tunnel configuration

## Installation

1. Encode your Cloudflare credentials:

```bash
# Encode the tunnel credentials file
# Located at: /home/<USER_NAME>/.cloudflared/<YOUR_TUNNEL_ID>.json
cat /home/<USER_NAME>/.cloudflared/<YOUR_TUNNEL_ID>.json | base64 -w 0

# Encode the certificate file
# Located at: /home/<USER_NAME>/.cloudflared/cert.pem
cat /home/<USER_NAME>/.cloudflared/cert.pem | base64 -w 0
```

2. Create a `custom_values.yaml` file and add your encoded credentials.

3. Install the Helm chart:

```bash
helm install cloudflared le/cloudflared -f custom_values.yaml --namespace cloudflared --create-namespace
```

## Configuration

For detailed configuration options, please refer to the values.yaml file.

## Support

For issues and feature requests, please file an issue in the repository.
