#!/bin/bash

cat <<EOF
## Copy and paste the following 12 lines into your /etc/hosts file:
$1  k8s.local
$1  argo-cd.local
$1  kubeapps.local
$1  grafana.local
$1  prometheus.local
$1  mysql-exporter.local
$1  mimir.local
$1  kafka.local
$1  kafka-ui.local
$1  echo-server-api.local
$1  localstack.local
$1  my-bucket.s3.localhost.localstack.cloud
EOF
