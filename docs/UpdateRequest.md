# UpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Custom** | [**System.Collections.Hashtable**](CustomUpdateData.md) |  | [optional] 
**Fleets** | **String[]** |  | [optional] 
**Devices** | **String[]** |  | [optional] 
**PackageIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateRequest = Initialize-TorizonPlatformAPIUpdateRequest  -Custom null `
 -Fleets null `
 -Devices null `
 -PackageIds null
```

- Convert the resource to JSON
```powershell
$UpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

