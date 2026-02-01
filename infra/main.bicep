param location string = resourceGroup().location
// Azure Foundation Kit - Base Infrastructure
param location string = resourceGroup().location
param prefix string = 'AzureKit'

// Network Security Group (NSG) to control inbound traffic
resource nsg 'Microsoft.Network/networkSecurityGroups@2023-05-01' = {
  name: '${prefix}-NSG'
  location: location
  properties: {
    securityRules: [
      {
        name: 'AllowHTTPInbound'
        properties: {
          priority: 1000
          access: 'Allow'
          direction: 'Inbound'
          destinationPortRange: '80'
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

// Virtual Network (VNet) with a secured subnet
resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: '${prefix}-VNet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'WebSubnet'
        properties: {
          addressPrefix: '10.0.1.0/24'
          networkSecurityGroup: {
            id: nsg.id
          }
        }
      }
    ]
  }
}

output vnetId string = vnet.id
output subnetName string = vnet.properties.subnets[0].name
