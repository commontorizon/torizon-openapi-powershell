# JsonSignedPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Signatures** | [**ClientSignature[]**](ClientSignature.md) |  | [optional] 
**Signed** | [**AnyType**](.md) |  | 

## Examples

- Prepare the resource
```powershell
$JsonSignedPayload = Initialize-TorizonPlatformAPIJsonSignedPayload  -Signatures null `
 -Signed null
```

- Convert the resource to JSON
```powershell
$JsonSignedPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

