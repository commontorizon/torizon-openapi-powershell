# ErrorRepresentation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | 
**Cause** | **String** |  | [optional] 
**Code** | **String** |  | 
**ErrorId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorRepresentation = Initialize-TorizonPlatformAPIErrorRepresentation  -Description null `
 -Cause null `
 -Code null `
 -ErrorId null
```

- Convert the resource to JSON
```powershell
$ErrorRepresentation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

