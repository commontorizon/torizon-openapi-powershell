# PackageInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PackageVersion** | **String** |  | 
**PackageName** | **String** |  | 
**Checksum** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PackageInfo = Initialize-TorizonPlatformAPIPackageInfo  -PackageVersion null `
 -PackageName null `
 -Checksum null
```

- Convert the resource to JSON
```powershell
$PackageInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

