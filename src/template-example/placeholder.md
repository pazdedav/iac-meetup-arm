# Notes

## Create a Service Principal for CI (Meghan)

```bash
az ad sp create-for-rbac --name "serviceOneSP" --sdk-auth --role contributor --scopes /subscriptions/74729c08-12f9-49fc-9817-39e6af4041d1/resourceGroups/contoso-serviceOne-rg
```
