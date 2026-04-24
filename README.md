# ARCORIS GitHub Pages Vanity Imports

This repository hosts static GitHub Pages files for the `arcoris.dev` domain.

## Responsibilities

- Serve the organization landing page at `https://arcoris.dev`.
- Serve Go vanity import metadata for `arcoris.dev/pool`.
- Redirect browser users to the canonical GitHub organization or repository pages.

## Go vanity import

The path `https://arcoris.dev/pool?go-get=1` must return the following metadata in the HTML `<head>`:

```html
<meta name="go-import" content="arcoris.dev/pool git https://github.com/arcoris/pool">
```

The source repository must use the same module path in go.mod:
```go
module arcoris.dev/pool
```

## Deployment

Use GitHub Pages from the main branch and repository root.

Recommended repository name for the organization site:
```text
arcoris.github.io
```

Recommended custom domain:
```text
arcoris.dev
```
