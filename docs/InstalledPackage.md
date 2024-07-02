# InstalledPackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Installed** | [**PackageInfo**](PackageInfo.md) |  | 
**Component** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InstalledPackage = Initialize-TorizonPlatformAPIInstalledPackage  -Installed null `
 -Component null
```

- Convert the resource to JSON
```powershell
$InstalledPackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

