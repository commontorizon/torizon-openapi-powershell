# ClientSignature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Keyid** | **String** |  | 
**Sig** | **String** |  | 
**Method** | [**SignatureMethod**](SignatureMethod.md) |  | 

## Examples

- Prepare the resource
```powershell
$ClientSignature = Initialize-TorizonPlatformAPIClientSignature  -Keyid null `
 -Sig null `
 -Method null
```

- Convert the resource to JSON
```powershell
$ClientSignature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

