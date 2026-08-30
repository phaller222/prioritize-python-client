# Prioritize Python Client

Official Python client library for the [Prioritize](https://github.com/phaller222/Prioritize) REST API (`/api/v1`).

The client is **spec-first**: every API and model class under `prioritize_client/` is generated at build
time from the frozen OpenAPI specification in `openapi/openapi.json` (a copy of the `docs/openapi.json`
released from the main Prioritize repo) and is **never hand-edited**. The client version tracks the API
version — `1.x` of the client targets API `1.x`.

## Install

```bash
pip install prioritize-client
```

Published on [PyPI](https://pypi.org/project/prioritize-client/).

## Usage

```python
import prioritize_client
from prioritize_client.api.projects_api import ProjectsApi

config = prioritize_client.Configuration(
    host="http://localhost:8080",   # /api/v1 is already part of the spec paths
    username="admin",               # HTTP Basic
    password="p@ssword",
)
# or Bearer (Keycloak): config = prioritize_client.Configuration(host=..., access_token="<token>")

with prioritize_client.ApiClient(config) as api_client:
    projects = ProjectsApi(api_client)
    mine = projects.project_get_my_projects()
```

- Transport: `urllib3`
- Auth: HTTP Basic (`username`/`password`) or Bearer (`access_token`)
- Import package: `prioritize_client` · Python 3.8+
- License: Apache-2.0

## Regenerating

To move the client to a new API version, drop the released `openapi.json` into `openapi/` and regenerate —
the generated sources are never edited by hand:

```bash
./generate.sh
```

`generate.sh` pins the spec's `openapi` header to `3.0.1` if needed (the OpenAPI Generator cannot resolve a
`3.1.0` header), runs the generator via the Maven harness in `pom.xml`, then stamps the Apache-2.0 license
and author into the generated `pyproject.toml`.

## Releasing (maintainers)

Releases are published to PyPI by GitHub Actions (`.github/workflows/publish.yml`) when a `v*` tag is
pushed. Authentication uses **PyPI Trusted Publishing (OIDC)**: GitHub mints a short-lived token for this
repository and workflow, and PyPI verifies it — no API token is stored in repository secrets or anywhere
else, and nothing expires.

```bash
# bump artifactVersion/packageVersion in pom.xml, regenerate, commit, then:
git tag -a v1.5.0 -m "Release 1.5.0"
git push origin v1.5.0        # the workflow builds and publishes
```

The workflow refuses to publish if the tag disagrees with `VERSION` in `setup.py`. That is the version that
actually ships — setuptools is the build backend, so the version in the `[tool.poetry]` block of
`pyproject.toml` is not the one that counts.

### One-time setup

On <https://pypi.org/manage/project/prioritize-client/settings/publishing/>, add a GitHub publisher:

| Field | Value |
|---|---|
| Owner | `phaller222` |
| Repository | `prioritize-python-client` |
| Workflow name | `publish.yml` |
| Environment name | `pypi` |

The environment name must match the `environment:` key in the workflow; create it under the repository's
*Settings → Environments* too.

### Manual fallback

If Actions is unavailable, the old path still works from a machine holding a PyPI API token:

```bash
python -m build            # produces dist/*.whl and dist/*.tar.gz
twine upload dist/*        # auth via a PyPI API token (__token__ / pypi-...); no GPG needed
```
