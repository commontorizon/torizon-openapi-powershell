# EditPackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** |  | [optional] 
**ProprietaryMeta** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 
**HardwareIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EditPackage = Initialize-TorizonPlatformAPIEditPackage  -Comment null `
 -ProprietaryMeta null `
 -Uri null `
 -HardwareIds null
```

- Convert the resource to JSON
```powershell
$EditPackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

