---
theme : "league"
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "Defense Against Supply Chain Attacks"
description: "Supply chain attacks have made the news, and represent a real threat vector for companies and their customers.  Demonstrait some hands-on supply chain compromises and defense strategies."
last-updated: "March 28, 2022"
separator: <!--s-->
verticalSeparator: <!--v-->
revealOptions:
    transition: 'zoom'
---

## Defense Against Supply Chain Attacks

 [Steve Miller](https://www.r15cookie.com) 

- Devops Practioner
- Sr. DevOps Engineer at Tuition.io

Note:

GOAL: 30 minutes presentation, with 15-30 minute Q&A

- Introduction of myself
  - Sr. DevOps Engineer at Tuition.io
  - Multiple other Devops and System Admin roles across a variety of company sizes as well as public institutions
  - Passion for DevOps Practices, which generally includes CI/CD work.

<!--s-->


## Goal

Demonstrait supply-chain attacks and defense strategies

Note:


<!--s-->

## Standard Development Supply Chain

Note:

At least a modern workflow:
- Develop writes and tests code/website on local machine, tests it.
  - May add third party libraries to be more productive
  - May build with third party docker containers
- Pushing code to a central repository
  - CI runs (or not...)
  - Peer reviewed (but let's say not required...)
  - Merged in to main codebse
- Deployment process 
  - Some manual or autmoated method

<!--s-->

## Weeknesses In The Supply Chain

Note:

- Primarily, any manual work
  - Developer workstation itself (credentials to repository, compromise of the local machine)
  - Third party libraries and containers
    - Largest one - and difficult to secure along with allowing maximum flexibility.
  - Process to merge into the main codebase
  - Deployment process itself

<!--s-->

## Defending The Supply Chain

Note:

- Workstation - Standardard Security precautions (only known software sources, good password, yada, yada, yada)
- Third party library - ensure
  - They are well known, well used, signed (both library and docker)
- Repository Security
  - Good practices on employee access to repositories
  - Zero Trust style to guard against unauthorized users
  - **Prevent direct commit to main/master or whatever your release branch(es) are** 
  - Ensure all code has to be reviewed by another developer (or **flag** any emergency commits)
  - Ensure CI and CD check signatures, and potentially require additional approval for third party libraries
- Security of any process/machine invovled to releasing the final code base