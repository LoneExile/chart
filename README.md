# Chart

Self-hosted helm chart

> [!CAUTION]
> This is a work in progress. only use it if you know what you are doing.

## Prerequisites

- [helm](https://helm.sh/docs/intro/install/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)

## Usage

```sh
## add repo
helm repo add le https://loneexile.github.io/chart
helm repo update

## example installation
helm install memos le/memos

## example installation with custom values
helm install memos le/memos -f custom-values.yaml

## remove installation
helm uninstall memos

## remove repo
helm repo remove le
```

## List of charts

- [memos](https://github.com/usememos/memos)
  An open-source, lightweight note-taking solution. The pain-less way to create your meaningful notes. Your Notes, Your Way.

## TODO

- [ ] add more charts
- [ ] handle secrets
  - [external-secrets](https://github.com/external-secrets/external-secrets)
  - [helm-secrets](https://github.com/jkroepke/helm-secrets)

#### resources

- https://v2.helm.sh/docs/chart_best_practices/
