# NetworkInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** |  | [optional] 
**DeviceUuid** | **String** |  | 
**MacAddress** | **String** |  | [optional] 
**LocalIpV4** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInfo = Initialize-TorizonPlatformAPINetworkInfo  -Hostname null `
 -DeviceUuid null `
 -MacAddress null `
 -LocalIpV4 null
```

- Convert the resource to JSON
```powershell
$NetworkInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

