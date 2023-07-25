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

1. Setup k8s Cluster.  With Civo

```sh
civo k3s create <clustername> --size g3.k3s.small --nodes 1 --applications cert-manager
```

2. Set domainname manually to ingress (TODO: exteranl-dns setup...)
3. Install [cert-manager](https://github.com/jetstack/cert-manager)
4. Setup an Issuer.  Below example assumes leverage a Trafik for an ingress

    ```yaml
    apiVersion: cert-manager.io/v1alpha2
    kind: ClusterIssuer
    metadata:
      name: letsencrypt-prod
      namespace: cert-manager
    spec:
      acme:
        email: me@r15cookie.com
        server: https://acme-v02.api.letsencrypt.org/directory
        privateKeySecretRef:
          name: blast-public-secret-issuer-account-key
        solvers:
        - http01:
            ingress:
              class: traefik
      ```

5. Apply rest of repo

    ```sh
    kubectl apply -k .
    ```
