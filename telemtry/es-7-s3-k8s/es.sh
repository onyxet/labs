#!/bin/bash

echo "Add elastic repo"
helm repo add elastic https://helm.elastic.co

echo "Create Telemetry namespace"

kubectl create namespace telemetry

echo "Install ES 7"
helm install --name elasticsearch elastic/elasticsearch --version 7.3.0 --namespace telemetry

echo "Waiting until cluster will be ready"
sleep 100

echo "Install Kibana"
helm install --name kibana elastic/kibana --version 7.3.0 --namespace telemetry

echo "Install logstash"
helm upgrade --install logstash stable/logstash -f logstash-values.yaml --namespace telemetry

echo "Wait until logstash becomes available"
sleep 50

kubectl get svc,pod -n telemetry