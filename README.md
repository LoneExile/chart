# chart

self-hosted helm chart

## Prerequisites

- [helm](https://helm.sh/docs/intro/install/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)

## Usage

```sh
## add repo
helm repo add le https://loneexile.github.io/chart
helm repo update

## example installation
helm install memos loneexile/memos

## remove installation
helm uninstall memos

## remove repo
helm repo remove le
```

## List of charts

- [memos](https://github.com/usememos/memos)
  An open-source, lightweight note-taking solution. The pain-less way to create your meaningful notes. Your Notes, Your Way.

#### resources

- https://v2.helm.sh/docs/chart_best_practices/
