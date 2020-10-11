# Infrastructure as Code Meetup Oslo

Repository for Infrastructure as Code meetup, demonstrating a complex end-to-end scenario for using advanced capabilities of Azure Resource Manager language (like templateSpecs, deployment scopes, deploymentScripts) and the new ARM DSL called Bicep.

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

