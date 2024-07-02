# RangeNotSatisfiableRepr
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Msg** | **String** |  | 
**ErrorId** | **String** |  | [optional] 
**Cause** | **String** |  | [optional] 
**Code** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$RangeNotSatisfiableRepr = Initialize-TorizonPlatformAPIRangeNotSatisfiableRepr  -Description null `
 -Msg null `
 -ErrorId null `
 -Cause null `
 -Code null
```

- Convert the resource to JSON
```powershell
$RangeNotSatisfiableRepr | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

