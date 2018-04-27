#!/usr/bin/env sh

set -e

echo "applying k8s configs"
kubectl apply -f /configs --namespace "$namespace"
