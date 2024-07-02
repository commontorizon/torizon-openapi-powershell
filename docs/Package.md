# Package
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PkgType** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**HardwareIds** | **String[]** |  | [optional] 
**Name** | **String** |  | 
**Version** | **String** |  | 
**Size** | **Int64** |  | 
**Comment** | **String** |  | [optional] 
**Hashes** | **System.Collections.Hashtable** |  | 
**ProprietaryMeta** | **String** |  | [optional] 
**PackageId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Package = Initialize-TorizonPlatformAPIPackage  -PkgType null `
 -Uri null `
 -CreatedAt null `
 -HardwareIds null `
 -Name null `
 -Version null `
 -Size null `
 -Comment null `
 -Hashes null `
 -ProprietaryMeta null `
 -PackageId null
```

- Convert the resource to JSON
```powershell
$Package | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

