#!/bin/sh
# https://minikube.sigs.k8s.io/docs/handbook/registry/#docker-on-macos
docker run --rm -it --network=host alpine ash -c "apk add socat && socat TCP-LISTEN:5000,reuseaddr,fork TCP:$(minikube ip):5000"
