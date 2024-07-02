# CustomUpdateData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uri** | **String** |  | [optional] 
**Metadata** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomUpdateData = Initialize-TorizonPlatformAPICustomUpdateData  -Uri null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$CustomUpdateData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

