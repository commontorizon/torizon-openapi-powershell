# DevicePackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **String** |  | 
**Checksum** | **String** |  | 
**Component** | **String** |  | 
**Name** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePackage = Initialize-TorizonPlatformAPIDevicePackage  -Version null `
 -Checksum null `
 -Component null `
 -Name null
```

- Convert the resource to JSON
```powershell
$DevicePackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

