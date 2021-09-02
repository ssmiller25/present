---
theme : "league"
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "DevOps Bootcamp 2021: Fast Feedback"
description: "Fast feedback is a key component of many parts of Devops, as discussed in our previous sessions.   This session will dive into hands-on examples of fast feedback configurations and tools that target the build/test, release, and deployment stages of the devops cycle."
last-updated: "Sep 2, 2021"
separator: <!--s-->
verticalSeparator: <!--v-->
revealOptions:
    transition: 'zoom'
---

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## DevOps Bootcamp 2021: Fast Feedback

 [Steve Miller](https://www.r15cookie.com) 

- Devops Practioner
- Sr. Software Engineer at Plex Systems (Not **that** Plex...)

Note:

GOAL: 50-60 minutes presentation, Q&A throughout session

- Introduction of myself
  - Sr. Software Engineer at Plex
  - Multiple other Devops and System Admin roles across a variety of company sizes as well as public institutions
  - Passion for DevOps Practices

<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback

- Journey So Far
  - Intro To DevOps
  - Docker
  - Build & Test
  - Release & Deploy
  - Operate & Monitor
- Pull together for a demo, highlighting fast-feedback

Notes:
  - So Far, covered
    - Build & Test
    - Release & Deploy
    - Operate & Monitor
  - Consistent Theme: "Fast Feedback"
  - Let's explore fast feedback in specific examples.
  - Assumption that we have an understanding of basic Docker and Kubernetes.


<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback

![Devops ToolChainge Image](./civo-fastfeedback/devops-toolchain.svg)

Notes:

- Going to highlight three areas of the Devops Toolchain today
  - Create: Fast Feedback from a develpers as they are working on a solution
  - Verify/Package: Fast Feedback from Peers and Business Users
  - Release/Configure/Monitor: Fast Rollback once a change has made it to production
- Several tools will be highlighted
  - Help to solitify the ideas presented so far by seeing them in action
- - Remember there are a wide variety of tooling in each area.  Depending on your circumstances, better tools may exist.

<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback: Microservice Example

https://www.github.com/ssmiller25/cloudnativeapp

Notes:

- Google's Microservice Reference Framework.
- A Polygot app...written in several languages.  Provides a great platform to see examples in commonly used language in the Microservice space.

<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback - Create

Optimize the local developer experience

Notes:

- Developers sometimes have to deal with long, manual local build toolchains
- Make sure the local toolchain is optimized
- Highlights: Makefiles and skaffold
  - Makefile - a method to help consolidate series of commands.  Older, but common in some toolchains already (C/C++, Golang, etc)
  - Skaffold - A method to automate the building of multiple containers
- Demo: Makefile
  - Highlight that there are components designed to run within a bulid pipeline, but that **also** can be run locally for testing

<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback - Verify/Package

Pull based review environments

Notes:

- Once development is complete, should generally be peer reviewed, or potentially reviews by end users
- Pull based environments provide an amazing way to speed us such development
  - Let's users see yoru code change in an entirly "mini" deployment of your application.
  - Can give out credentials to end-users so they review without any special tooling/consideration
  - Can be leveraged in lots of ways - one-off environments for customer demos, etc, etc.  
- Keys
  - Build pipeline configured to spin up a new environment based on PR
  - Security - not a big deal with private repos for but PUBLIC, make sure your infrastrucutre pipeline doens't run for unknown individuals!  <https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/disabling-or-limiting-github-actions-for-a-repository#configuring-required-approval-for-workflows-from-public-forks>
- Hands-On Example
  - Show build pipeline in https://github.com/ssmiller25/cloudnativeapp/pull/1


<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback - Release/Configure/Monitor

Rollback on demand

Notes:

- Fast feedback also represents being able to quickly roll back code changes
- Gives comfort with high velocity, as any mistakes can be quickly undone
- An easy first step, although more advance phases are available.
  - Canary deploys
  - Blue/Gree deploys
- Hands-On Example
  - Pull back a PR that's already there
  - (warning, could be up to 10 minutes with testing)


<!--s-->

<!-- .slide: data-background="./civo-fastfeedback/background.png" -->

## Fast Feedback - Conclusion

Try out: https://github.com/ssmiller25/cloudnativeapp

Submit issues, or PRs!

Notes:

- Try out the demo!  Hopefully will be adding a few new features
  - Refinement of getting started and pipelines
  - Working examples with ServiceMesh and other debugging tools