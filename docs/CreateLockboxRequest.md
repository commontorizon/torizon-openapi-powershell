# CreateLockboxRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Custom** | [**System.Collections.Hashtable**](CustomUpdateData.md) |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**PackageIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateLockboxRequest = Initialize-TorizonPlatformAPICreateLockboxRequest  -Custom null `
 -ExpiresAt null `
 -PackageIds null
```

- Convert the resource to JSON
```powershell
$CreateLockboxRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

