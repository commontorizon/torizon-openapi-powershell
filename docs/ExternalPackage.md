# ExternalPackage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PkgType** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**HardwareIds** | **String[]** |  | [optional] 
**DelegationOrigin** | **String** |  | 
**Name** | **String** |  | 
**Version** | **String** |  | 
**Size** | **Int64** |  | 
**Hashes** | **System.Collections.Hashtable** |  | 
**ProprietaryMeta** | **String** |  | [optional] 
**PackageId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExternalPackage = Initialize-TorizonPlatformAPIExternalPackage  -PkgType null `
 -Uri null `
 -CreatedAt null `
 -HardwareIds null `
 -DelegationOrigin null `
 -Name null `
 -Version null `
 -Size null `
 -Hashes null `
 -ProprietaryMeta null `
 -PackageId null
```

- Convert the resource to JSON
```powershell
$ExternalPackage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

