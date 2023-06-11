#!/bin/bash
apt update
apt install curl
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 > get_helm.sh
less get_helm.sh
chmod +x get_helm.sh
./get_helm.sh
apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
apt install ansible -y
apt install kubectl