# FileInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hashes** | **String** |  | 
**Length** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$FileInfo = Initialize-TorizonPlatformAPIFileInfo  -Hashes null `
 -Length null
```

- Convert the resource to JSON
```powershell
$FileInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

