#!/usr/bin/env sh

set -e

applyCmd='kubectl apply -f /configs'
if [ "$namespace" != " " ]; then
  applyCmd=$(printf "%s --namespace %s" "$applyCmd" "$namespace")
fi
echo "applying k8s configs"

eval "$applyCmd"
