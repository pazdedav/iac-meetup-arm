#!/bash

# Log in to Azure using GH secret
#az login

# Deploys a template as templateSpecs to Azure subscription
#az ts create \
#  --name webSpec \
#  --version "1.0.0.0" \
#  --resource-group templateSpecRG \
#  --location "westus2" \
#  --template-file "c:\Templates\linkedTS\azuredeploy.json"