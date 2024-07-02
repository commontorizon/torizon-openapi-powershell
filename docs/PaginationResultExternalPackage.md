# PaginationResultExternalPackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int64** |  | 
**Values** | [**ExternalPackage[]**](ExternalPackage.md) |  | [optional] 
**Limit** | **Int64** |  | 
**Total** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$PaginationResultExternalPackage = Initialize-TorizonPlatformAPIPaginationResultExternalPackage  -Offset null `
 -Values null `
 -Limit null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PaginationResultExternalPackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

