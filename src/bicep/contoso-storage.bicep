param storageAccountType string {
  default: 'Standard_GRS'
  allowed: [
    'Standard_GRS'
    'Standard_RAGRS'
    'Standard_GZRS'
    'Standard_RAGRS'
  ]
  metadata: {
    description: 'Storage account type.'
    }
}

param storageAccountConfig object

var storageAccountString = toLower(concat(storageAccountConfig.prefix, uniqueString(resourceGroup().id)))

// "[if(lessOrEquals(length(variables('storageAccountString')), 24), variables('storageAccountString'), substring(variables('storageAccountString'),0, 24))]"
var storageAccountName = if(lessOrEquals(length(storageAccountString),24), storageAccountString, substring(storageAccountString, 0, 24))

resource contosoStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: storageAccountConfig.location
  sku: {
      name: storageAccountType
      tier: 'Standard'
  }
  kind: storageAccountConfig.kind
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

output storageAccountNameOut string = storageAccountName
