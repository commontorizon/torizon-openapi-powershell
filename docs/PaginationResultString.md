# PaginationResultString
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int64** |  | 
**Values** | **String[]** |  | [optional] 
**Limit** | **Int64** |  | 
**Total** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$PaginationResultString = Initialize-TorizonPlatformAPIPaginationResultString  -Offset null `
 -Values null `
 -Limit null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PaginationResultString | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

