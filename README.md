# Standalone lab Search API

This small API searches the Elasticsearch index selected by its environment.
Its optional Redis rewrite lookup is read-only and falls back to the original
query when Redis is unavailable or has no matching rule.

## Test with uv

From the repository root, run:

```sh
uv sync --locked
uv run --locked python -m unittest -v
```

uv selects Python 3.13.7 and the locked Redis client. Container builds use a
pinned uv binary and hash-checked dependencies. Configure corporate trust before
downloading Python or packages using
[the lab Python guide](https://gitea.localhost:34443/elastic-agent/ephemeral-elastic-search-stack/src/branch/main/docs/python-environments.md).
The CI build passes its combined CA bundle as a BuildKit secret when available.
