resource vnet 'Microsoft.Network/virtualNetworks@2020-05-01' = {
  name: 'bvnet'
  location: 'westeurope'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.10.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'subnet1'
        properties: {
          addressPrefix: '10.10.0.0/24'
        }
      }
    ]
  }
}

//Run 'bicep build main.bicep' to generate the ARM template.