#!/bin/bash

cd pipelines/manifests/kustomize/
KFP_ENV=platform-agnostic
kubectl apply -k cluster-scoped-resources/
kubectl wait crd/applications.app.k8s.io --for condition=established --timeout=60s
kubectl apply -k "env/${KFP_ENV}/"
kubectl wait pods -l application-crd-id=kubeflow-pipelines -n kubeflow --for condition=Ready --timeout=1800s

