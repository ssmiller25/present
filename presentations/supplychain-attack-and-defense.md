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

Demonstrate (software) supply-chain attacks and defense strategies.

- Upstream Library Security: Log4j
- Upstream Library Changes/Removal: left-pad, Faker.js and Color.js
- Supply Chain Compromise: SolarWinds Breach

Note:

- Certainly a bit more buzz based on news of recent - and not so recent - events
- Increasing we are seeing security attacks that target more then just production deployments

- Further Reading
  - <https://www.sans.org/blog/what-do-you-need-to-know-about-the-log4j-log4shell-vulnerability/>
  - <https://www.sans.org/blog/what-you-need-to-know-about-the-solarwinds-supply-chain-attack/>
  - <https://www.bleepingcomputer.com/news/security/dev-corrupts-npm-libs-colors-and-faker-breaking-thousands-of-apps/>
  - <https://www.infoworld.com/article/3047177/how-one-yanked-javascript-package-wreaked-havoc.html>

<!--v-->

## Strategy

- Toolbox Mentality
- Focus on Fundamentals

  > “The minute you get away from fundamentals ... the bottom can fall out of your game, your schoolwork, your job, whatever you’re doing.” - Michael Jordon*

Note:

- Focus on small, individual techniques and tools that can be implemented as needed, based on your specific environment
- Focus on fundamentals - a lot of what will protect you best are common coding best practices

- Michael Jordon quote source: <https://www.goodreads.com/quotes/107363-the-minute-you-get-away-from-fundamentals-whether-its>

<!--s-->

## Standard Development Supply Chain

[!SupplyChain](supplychain-overall.png)

Note:

Supply Chain (Simplified Devops Loop)

             Libs                        Runners
              |                             |
              v                             v
Developer -> Code -> Peer Review -> CI/Tests Deployments -> Production Deployment

Modern supply chains can provide a lot of built in benefits:

- Develop writes and tests code/website on local machine, tests it.
  - May add third party libraries to be more productive
  - May build with third party docker containers
- Pushing code to a central repository
  - CI runs (or not...)
  - Peer reviewed (but let's say not required...)
  - Merged in to main codebase
- Deployment process 
  - Some manual or automated method

Tradition security practices concentrate ont he "Production" deployment/environment
Not uncommon for development shops to consider dev machines/environment not as important to secure as production
As we seen from history, this is a grave mistake.

<!--s-->

## Defending The Supply Chain - Hosts

Fundamental: Host Security!

- Workstations
- CI/Test Environment
- CI/CD Runners
- Servers

Note:

- Workstation - Standard Security precautions (only known software sources, good password, yada, yada, yada)
  - Must be balances with the needs of the developers, as often super-user priledges are necessary<!-- .slide: data-fullscreen -->
- CI/CD environment.  Remember, this is how Solarwinds was compromised
  - Injected malious code, that **was signed** and **released**
  - However, CI environments provide a lot of benefits, so I still view as essential to a good software supply chain
- With Test and Runners, if using docker, ensure following Docker best practices (whole slide later in development)
  - Security of any process/machine invovled to releasing the final code base
- Server
  - Zero Trust Principles, especially with modern work from home environments

<!--v-->

## Defending The Supply Chain - Developer

- Source Control
  - Protected Branches
  - Peer Review Requirements

Note:

- Best way to prevent malicious or unintentional security risks in your code
- Peer review requirements/protected branches - should be required.  **No single person should be able to commit code to production
  - Ensure all code has to be reviewed by another developer (or **flag** any emergency commits)
- Security sensitive code may be flagged for additional reviews

<!--v-->

## Defending The Supply Chain - Library

Library Defenses

- **Automated Scanning** for insecure versions
- **Version Pinning** to prevent breaking updates (**MUST** be combined with automated scanning)
- **Artifact Vendoring** to prevent removal from public repositories.

Note:

- Target both malicious and inadvertent security concerns
- Third party library - ensure scanning
  - They are well known, well used, signed (both library and docker)
- Version Pinning
- Repository Security
  - Good practices on employee access to repositories
  - Ensure CI and CD check signatures, and potentially require additional approval for third party libraries

<!--v-->

## Defending The Supply Chain - Docker

Docker Defenses (similar to library)

- **Automated Scanning**
- **Version Pinning** - SHA256 Hash of Upstream
- **Artifact Vendoring** - Cache remote base images and any dependent artifacts needed for build

Note:

- Similar to library defences.  Some differences
  - Dockerfile updates also share OS level concerns (potentially)
  - Pin dockerfile to SHA256 hash
  - BUT - need method to ensure you are on latest
  - Updates within Dockerfile..
  - Ensure dockerfile scan, but in CI as well as deployed artifact

<!--v-->

## Defending The Supply Chain - Continuous Monitoring

Note:

- How to we defend again older libraries (log4j...)
  - Dependabot like auto updates
  - Ideally PRs automatically created and assigned for integration.
  - Potential notification based on severity of updated code...
- How to defend against library modification <https://fossbytes.com/developer-corrupts-faker-js-and-color-js/>

<!--s-->

## Defending the Supply Chain - Conclusion

## Thanks you!

me@r15cookie.com
https://www.r15cookie.com

Example Repos
- React/Node - <https://github.com/ssmiller25/brokencrystals>
- PHP - <https://github.com/ssmiller25/diwa>

<!--s-->


<!--v-->

## Defending The Supply Chain - Dependabot Alternatives

- Synk
- Whitesource Renovate
- SonarQube and Qualys

<!--s-->

## Additional Resources

- OWASP Vulerable Web Application Directory Project: <https://github.com/OWASP/OWASP-VWAD>