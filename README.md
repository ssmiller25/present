# [Steve Miller's Presentations](https://present.r15cookie.com)

Presentations created by [Steve Miller](https://www.r15cookie.com/about/)  All done with [reveal.js](https://revealjs.com/) with markdown source material.

<a href="https://gitpod.io/from-referrer/"><img src="https://img.shields.io/badge/Gitpod-ready--to--code-908a85?logo=gitpod" alt="Gitpod ready-to-code" />

## Usage

- Main site <https://present.r15cookie.com>
- Shortcut keys
  - Showing Speaker Notes in popup window: "S"
  - Overview Mode "O"

## Building

- To build:

  ```sh
  make build
  ```

- To Run (container will autoremove when stopped manually):

  ```sh
  make run
  ```


- To Stop
  ```sh
  make run
  ```

- To run a live environment for editing

  ```sh
  make livedev
  ```

## Printing

To print to PDF:

1.  Add the following to the markdown header of a presentation:

```yaml
revealOptions:
    showNotes: 'separate-page'
```

2. Open the presentation, and append `?print-pdf` to end of URL (remove any `#/` present)
3. Use the local systems print dialog to print a PDF

## Deployment

The site is deployed automatically to [GitHub Pages](https://pages.github.com/) via the [pages workflow](.github/workflows/pages.yml) on every push to `main`.

To enable for the first time:

1. Go to **Settings → Pages** in the GitHub repo.
2. Set **Source** to **GitHub Actions**.
3. Set the custom domain to `present.r15cookie.com` and save.
4. Add a DNS `CNAME` record pointing `present.r15cookie.com` → `ssmiller25.github.io`.

Subsequent pushes to `main` will rebuild and redeploy automatically.
