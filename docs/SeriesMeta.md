# SeriesMeta
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceIds** | **String[]** |  | [optional] 
**Aggregation** | [**TimeAggregation**](TimeAggregation.md) |  | 

## Examples

- Prepare the resource
```powershell
$SeriesMeta = Initialize-TorizonPlatformAPISeriesMeta  -DeviceIds null `
 -Aggregation null
```

- Convert the resource to JSON
```powershell
$SeriesMeta | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

