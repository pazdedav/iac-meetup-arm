# Notes

Manual execution of **Template Library** deployment (RG and RBAC / role assignments):

```bash
az deployment sub create --name demoSubDeployment4 --location westeurope --template-file .\contoso-template-library.template.json --parameters .\contoso-template-library.qa.parameters.json
```
