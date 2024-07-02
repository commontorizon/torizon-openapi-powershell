# DeviceCreateReq
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceName** | **String** |  | [optional] 
**DeviceId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DeviceCreateReq = Initialize-TorizonPlatformAPIDeviceCreateReq  -DeviceName null `
 -DeviceId null
```

- Convert the resource to JSON
```powershell
$DeviceCreateReq | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

