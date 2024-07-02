# SimpleDeviceNotAffectedInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceUuid** | **String** |  | 
**Name** | **String** |  | 
**EcuErrors** | [**System.Collections.Hashtable**](ErrorRepresentation.md) |  | 
**DeviceId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SimpleDeviceNotAffectedInfo = Initialize-TorizonPlatformAPISimpleDeviceNotAffectedInfo  -DeviceUuid null `
 -Name null `
 -EcuErrors null `
 -DeviceId null
```

- Convert the resource to JSON
```powershell
$SimpleDeviceNotAffectedInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

