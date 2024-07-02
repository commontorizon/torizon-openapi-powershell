# PaginationResultPackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int64** |  | 
**Values** | [**Package[]**](Package.md) |  | [optional] 
**Limit** | **Int64** |  | 
**Total** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$PaginationResultPackage = Initialize-TorizonPlatformAPIPaginationResultPackage  -Offset null `
 -Values null `
 -Limit null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PaginationResultPackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

