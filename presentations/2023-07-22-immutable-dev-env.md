---
theme : "/css/paper-theme.css"
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "Immutable Development Environment"
description: "A local development environment is key to productivity. What happens when it breaks? We will explore the use of dev containers and remote development environments to help address some of those needs."
last-updated: "July 22, 2023"
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