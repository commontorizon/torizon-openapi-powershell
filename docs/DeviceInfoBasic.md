# DeviceInfoBasic
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastSeen** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**DeviceStatus** | [**DeviceStatus**](DeviceStatus.md) |  | 
**Notes** | **String** |  | [optional] 
**DeviceUuid** | **String** |  | 
**DeviceId** | **String** |  | 
**DeviceName** | **String** |  | 
**ActivatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceInfoBasic = Initialize-TorizonPlatformAPIDeviceInfoBasic  -LastSeen null `
 -CreatedAt null `
 -DeviceStatus null `
 -Notes null `
 -DeviceUuid null `
 -DeviceId null `
 -DeviceName null `
 -ActivatedAt null
```

- Convert the resource to JSON
```powershell
$DeviceInfoBasic | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

