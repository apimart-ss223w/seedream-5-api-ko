#!/usr/bin/env bash
# Seedream 5.0 Pro — submit a task and poll it
set -eu
export APIMART_API_KEY="${APIMART_API_KEY:?set APIMART_API_KEY first}"
curl --request POST --url https://api.apimart.ai/v1/images/generations \
  --header "Authorization: Bearer $APIMART_API_KEY" \
  --header 'Content-Type: application/json' \
  --data '{"model":"seedream-5-0-pro","prompt":"a cozy reading nook by a rainy window","n":1}'
