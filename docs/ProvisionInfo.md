# ProvisionInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StandardDeviceLimit** | **Int32** |  | 
**AutoProvUrl** | **String** |  | 
**Token** | **String** |  | 
**ProvisionedDevices** | **Int32** |  | 
**GatewayUrl** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ProvisionInfo = Initialize-TorizonPlatformAPIProvisionInfo  -StandardDeviceLimit null `
 -AutoProvUrl null `
 -Token null `
 -ProvisionedDevices null `
 -GatewayUrl null
```

- Convert the resource to JSON
```powershell
$ProvisionInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

