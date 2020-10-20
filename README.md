# Infrastructure as Code Meetup Oslo

![template-library-iam](https://github.com/pazdedav/iac-meetup-arm/workflows/template-library-iam/badge.svg)
![serviceOne-deployment-prod](https://github.com/pazdedav/iac-meetup-arm/workflows/serviceOne-deployment-prod/badge.svg)
![manage-azure-policy-07a68ce5](https://github.com/pazdedav/iac-meetup-arm/workflows/manage-azure-policy-07a68ce5/badge.svg)

## Purpose

This is a repository for Infrastructure as Code User Group Oslo [meetup](https://www.meetup.com/Infrastructure-As-Code-User-Group-Oslo/events/273116797/), demonstrating a complex end-to-end scenario for using advanced capabilities of Azure Resource Manager language (like templateSpecs, deployment scopes, deploymentScripts) and the new ARM DSL called Bicep.

## Narrative

Welcome to **Contoso Corporation**, a multi-national business with headquarters in Paris, France. It is a conglomerate manufacturing, sales, and support organization with over 100,000 products. Learn more about the company [here](https://docs.microsoft.com/en-us/microsoft-365/enterprise/contoso-overview?view=o365-worldwide).

![Contoso logo](https://docs.microsoft.com/en-us/microsoft-365/media/contoso-overview/contoso-icon.png?view=o365-worldwide)

Meet two heroes of our story:

- **Meghan** is a senior DevOps engineer, who has been working at Contoso for five years. Two years ago, the company presented a new business strategy with digital transformation, customer obsession, and lean as key pillars. This had a profound impact on both IT and software development organizations. Old habits and fixed mindset are no longer acceptable, there is a high pressure on everybody to invest their time to learn and grow.
- **Mat** is a "hard-core" IT Pro with two decades of experience, everything from managing network and server infrastructure, to endpoint management, systems integration, and automation. After the reorg, Mat was appointed to be a key member of the _Central Cloud Team_ as a Cloud Engineer, focusing on security, compliance, and building a "secure and compliant" cloud platform that will be used by internal teams.

At the beginning of our story, a new **cloud governance model** has been defined by key stakeholders. This model is partly a re-write of Contoso's existing security policies (adopted for the cloud) that was combined with new regulatory requirements that were introduced to the industry.

Mat's team has a very important task now. They must ensure there are reliable controls and audit capabilities enforced on their entire cloud environment, so all systems, apps, and services deployed to the cloud are compliant from Day 1.

Meghan's team has been developing a new application when this change of policies is announced. There is a growing fear that this new policy framework will slow down their progress and introduce many blockers. These concerns were escalated to VP of App Development and it was decided that **the Central Cloud Team need to find out a way to support developers while maintaining the governance model** as required by the business and industry regulators.

## Repository structure

```text

.github
  - workflows            contains all GitHub Action workflows used in this example
  - actions              contains custom GitHub action for converting bicep files to ARM JSON

docs
  - iac-talk             narrative for the IaC session including diagrams and other key information
  - policies             documentation for DevOps teams about implemented policies and their effect
                         instructions how to use custom ARM-TTK tests when authoring ARM JSON templates
  - template-lib         instructions for DevOps teams how to use the Template Library and onboard their SPs
                         also contains "Contracts" for every template spec (full structure of parameters file)
src
  - arm-ttk-testcases    contains custom ARK-TTK tests that reflect all applied policies in Azure
  - bicep                contains all .bicep files that are used as source for creating the Template Library by PlatformOps team
  - policies             contains policy definition and policy assignment files (JSON) in form of deployment template (tenant scope)
  - template-lib-code    templates for publishing to the Template Library
  - template-lib-iac     contains ARM JSON template for deploying needed components for the Template Library
  - template-example     contains IaC code that the DevOps engineer (persona) will use as the "main template" and include template specs

```
