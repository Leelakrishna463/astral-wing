#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PROXMOX_VE_ENDPOINT="https://$(hostname):8006/"
export PROXMOX_VE_API_TOKEN="$(sops -d --extract '["pve_api_token"]' ../secrets/host.sops.yaml)"
exec tofu "$@"
