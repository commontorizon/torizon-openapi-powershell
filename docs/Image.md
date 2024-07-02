# Image
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filepath** | **String** |  | 
**Fileinfo** | [**FileInfo**](FileInfo.md) |  | 

## Examples

- Prepare the resource
```powershell
$Image = Initialize-TorizonPlatformAPIImage  -Filepath null `
 -Fileinfo null
```

- Convert the resource to JSON
```powershell
$Image | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

