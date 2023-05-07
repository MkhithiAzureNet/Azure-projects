// Contoso Hybrid Migration - Core Infrastructure
@description('Azure Region')
param location string = 'southafricanorth'

resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: 'contoso-vnet-prod'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}
