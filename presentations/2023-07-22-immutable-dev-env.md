---
theme : "/css/paper-theme.css"
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "Immutable Development Environment"
description: "A local development environment is key to productivity. What happens when it breaks? We will explore the use of dev containers and remote development environments to help address some of those needs."
last-updated: "July 24, 2023"
separator: <!--s-->
verticalSeparator: <!--v-->
revealOptions:
    transition: 'zoom'
---
## Immutable Development Environment

 [Steve Miller](https://www.r15cookie.com)

- Devops Practitioner
- Sr. DevOps Engineer at Tuition.io

Note:

GOAL: 20 minutes presentation, with 10 minute Q&A

- Introduction of myself
  - Sr. DevOps Engineer at Tuition.io
  - Multiple other Devops and System Admin roles across a variety of private and public institutions
  - Passion for Robust Architectures

- Take questions throughout the presentation: **REPEAT QUESTIONS**

<!--s-->

## Goal

Discuss A New Way To Look At Development Environments.

**Cattle** Vs. **Pets**

Note:

- Goal today: Look at Development environments a new way
- Cattle vs Pets - a way to look at code deployment.  
- Infrastructure/cloud as moved to a "Cattle" model
  - Pets: Individual systems hand maintained
  - Cattle: Replace with the idea of automated, easily replaceable infrastructure
- Why not for development environments?
- Advantages
  - Ever had a local OS and IDE update hose your dev environment?
  - Onboarding new developers?  Readme up to date
  - The possibility of TDD **on your Dev Environment** - or potentially integrate your dev environment container into your CI so breaking changes are noticed in your normal dev pipeline!

<!--s-->

## Tools

DevContainers (<https://containers.dev>): A /somewhat/ open standard for defining Dockerized development environments

Codespaces: An online development environment that leverages DevContainers

<!--s-->

## Getting Started

- Using a Codespace template <https://github.com/codespaces/templates>

Note:

- Mention can also start in VScode - but I
- Start with Codespaces - NextJS template perhaps - <https://github.com/codespaces/templates>
  - Click on Next JS
  - WOW, VSCode in the Browser!
  - Change header...sweet
  - Now need to actually save to a repo...not the best experience...
    - Source Control
    - Click "Publish Branch"
    - Click public or private
    - When asked, agree to create a "fork"
- Open up my existing codespaces: <https://github.com/ssmiller25/grwebdev-nextjs-codespaces>
- Review .devcontainer/devcontainer.json
  - Ping out base image container
  - postAttachCommand (commands to run every time tyou attach)
  - postCreateCommand (every time you create an environment)
  - postStartCommand (every time you start an environment)
- But what if we didn't want to run in the "cloud"

<!--s-->

## DevContainers: Locally

**VSCode** and **Remote Development** extension

Note:

Remote Development VSCode Extension: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
Open environment from "Github Desktop"
Click `><` In corner to "Run in Container"
Demo same live environment
Mention container difference (maybe historical timeline of devcontainer.json)

<!--s-->

## DevContainer: Multi-Tiered App

Also bundle within PR requests themselves

https://github.com/payloadcms/public-demo/pull/23

Note:

- Can have a fully deployed pre-contained development environment for proposed code changes
- Demo: PayloadCMS demo environment as a DevContainer/Codespace environment.

<!--s-->

## Thank you

- **Contact**
  - <https://present.r15cookie.com>
  - <https://www.r15cookie.com>
  - me@r15cookie.com