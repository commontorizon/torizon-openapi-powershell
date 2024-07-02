# NotFoundRepr
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Msg** | **String** |  | 
**ErrorId** | **String** |  | [optional] 
**Cause** | **String** |  | [optional] 
**Code** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$NotFoundRepr = Initialize-TorizonPlatformAPINotFoundRepr  -Description null `
 -Msg null `
 -ErrorId null `
 -Cause null `
 -Code null
```

- Convert the resource to JSON
```powershell
$NotFoundRepr | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

