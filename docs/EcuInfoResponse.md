# EcuInfoResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HardwareId** | **String** |  | 
**Primary** | **Boolean** |  | 
**Id** | **String** |  | 
**Image** | [**EcuInfoImage**](EcuInfoImage.md) |  | 

## Examples

- Prepare the resource
```powershell
$EcuInfoResponse = Initialize-TorizonPlatformAPIEcuInfoResponse  -HardwareId null `
 -Primary null `
 -Id null `
 -Image null
```

- Convert the resource to JSON
```powershell
$EcuInfoResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

