---
#theme : "paper-theme"
theme : "/css/paper-theme.css"
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "Defense Against The Dark Arts...of Supply Chain Attacks"
description: "Many software supply chain attacks and library compromises have made the news, and represent a real threat vector for companies and their customers. We will show some hands-on supply chain and library compromises and defense strategies against such attacks."
last-updated: "Feb 28, 2022"
separator: <!--s-->
verticalSeparator: <!--v-->
revealOptions:
    transition: 'zoom'
---

## Defense Against The Dark Arts...of Supply Chain Attacks

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

Demonstrate supply-chain attacks and defense strategies

Note:


<!--v-->

## Strategy

- Toolbox Mentality
- Focus on Fundamentals

  > “The minute you get away from fundamentals ... the bottom can fall out of your game, your schoolwork, your job, whatever you’re doing.” - Michael Jordon*

Note:

- Focus on small, individual techniques and tools that can be implemented as needed, based on your specific environment
- FOcus on fundamentals - a lot of what will protect you best are common coding best practices

* Michael Jordon quote source: <https://www.goodreads.com/quotes/107363-the-minute-you-get-away-from-fundamentals-whether-its>

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

## Weaknesses In The Supply Chain

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

- Workstation - Standard Security precautions (only known software sources, good password, yada, yada, yada)
- Third party library - ensure
  - They are well known, well used, signed (both library and docker)
- Repository Security
  - Good practices on employee access to repositories
  - Zero Trust style to guard against unauthorized users
  - **Prevent direct commit to main/master or whatever your release branch(es) are** 
  - Ensure all code has to be reviewed by another developer (or **flag** any emergency commits)
  - Ensure CI and CD check signatures, and potentially require additional approval for third party libraries
- Security of any process/machine invovled to releasing the final code base

<!--v-->

## Defending the Supply Chain - Example Applications

- React/Node - <https://github.com/ssmiller25/brokencrystals>
- PHP - <https://github.com/ssmiller25/diwa>

<!--s-->

## Defending The Supply Chain - Continuous Monitoring

Note:

- How to we defend again older libraries (log4j...)
  - Dependabot like auto updates
  - Ideally PRs automatically created and assigned for integration.
  - Potential notification based on severity of updated code...
- How to defend against library modification <https://fossbytes.com/developer-corrupts-faker-js-and-color-js/>

<!--v-->

## Defending The Supply Chain - Dependabot Alternatives

- Synk
- Whitesource Renovate
- SonarQube and Qualys

<!--s-->

## Additional Resources

- OWASP Vulerable Web Application Directory Project: <https://github.com/OWASP/OWASP-VWAD>