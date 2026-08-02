#!/usr/bin/env bash
#
# Regenerate the Python client from openapi/openapi.json.
#
# Usage:
#   ./generate.sh [path-to-released-openapi.json]
#
# If a path is given, it is copied into openapi/openapi.json first. The OpenAPI
# Generator cannot resolve an "openapi":"3.1.0" header, so this script rewrites
# it to "3.0.1" (lossless — no 3.1-only constructs are used). The 1.3.0+ specs
# are already emitted as 3.0.1, so this becomes a no-op there.
#
# Generated sources under prioritize_client/ (and pyproject.toml, setup.py,
# requirements.txt, docs/) are never hand-edited.
set -euo pipefail
cd "$(dirname "$0")"

SPEC="openapi/openapi.json"
if [ "${1:-}" != "" ]; then
  cp "$1" "$SPEC"
fi

# Pin the OpenAPI header to 3.0.1 if the released spec is 3.1.x.
if grep -q '"openapi"[[:space:]]*:[[:space:]]*"3\.1' "$SPEC"; then
  sed -i 's/"openapi"\([[:space:]]*\):\([[:space:]]*\)"3\.1[0-9.]*"/"openapi"\1:\2"3.0.1"/' "$SPEC"
  echo "Pinned openapi header to 3.0.1"
fi

mvn -q generate-sources

# The python generator hardcodes a GIT_USER_ID/GIT_REPO_ID placeholder in the
# Poetry block of pyproject.toml (setup.py already carries the real packageUrl).
# Patch it deterministically so no placeholder ships. Idempotent.
sed -i 's#https://github.com/GIT_USER_ID/GIT_REPO_ID#https://github.com/phaller222/prioritize-python-client#g' pyproject.toml

echo "Done. Generated Python package into the repo root."
echo "Build & publish: python -m build && twine upload dist/*"
