# SimpleDeviceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceUuid** | **String** |  | 
**Name** | **String** |  | 
**DeviceId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SimpleDeviceInfo = Initialize-TorizonPlatformAPISimpleDeviceInfo  -DeviceUuid null `
 -Name null `
 -DeviceId null
```

- Convert the resource to JSON
```powershell
$SimpleDeviceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

