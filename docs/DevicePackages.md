# DevicePackages
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceUuid** | **String** |  | 
**InstalledPackages** | [**InstalledPackage[]**](InstalledPackage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePackages = Initialize-TorizonPlatformAPIDevicePackages  -DeviceUuid null `
 -InstalledPackages null
```

- Convert the resource to JSON
```powershell
$DevicePackages | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

