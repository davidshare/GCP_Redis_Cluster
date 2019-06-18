#!/bin/bash
set -o nounset -o pipefail -o errexit

# Load all variables from .env and export them all for Ansible to read
set -o allexport
source "$(pwd)/credentials/.env"
set +o allexport

echo "*************************$GOOGLE_APPLICATION_CREDENTIALS**********************************"
gcloud container clusters get-credentials $CLUSTER_NAME --zone $GCP_ZONE --project $GCP_PROJECT

# kubectl create clusterrolebinding cluster-admin-binding --clusterrole cluster-admin \
#   --user $SERVICE_ACCOUNT_EMAIL
