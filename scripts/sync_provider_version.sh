#!/usr/bin/env bash
set -euo pipefail

# Usage: VERSION=0.0.6 bash scripts/sync_provider_version.sh
VERSION="${VERSION:-}"
if [[ -z "$VERSION" ]]; then
  echo "Usage: VERSION=X.Y.Z $0" >&2
  exit 1
fi

update_file() {
  local file="$1"
  if [[ -f "$file" ]]; then
    sed -i.bak -E "s|(source\s*=\s*\"DocSpring/logstruct\"[\s\S]*version\s*=\s*\")>=?\s*[0-9.]+\"|\1>= $VERSION\"|" "$file" && rm -f "$file.bak"
  fi
}

update_file modules/metric-filter/versions.tf
update_file modules/subscription-filter/versions.tf

echo "Synchronized provider constraints to >= $VERSION"

