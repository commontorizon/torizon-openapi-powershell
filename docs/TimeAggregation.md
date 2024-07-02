# TimeAggregation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bucket** | **String** |  | 
**Method** | [**TimeAggregationMethod**](TimeAggregationMethod.md) |  | 

## Examples

- Prepare the resource
```powershell
$TimeAggregation = Initialize-TorizonPlatformAPITimeAggregation  -Bucket null `
 -Method null
```

- Convert the resource to JSON
```powershell
$TimeAggregation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

