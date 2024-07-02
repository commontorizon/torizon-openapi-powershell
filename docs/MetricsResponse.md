# MetricsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Series** | [**Series[]**](Series.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MetricsResponse = Initialize-TorizonPlatformAPIMetricsResponse  -Series null
```

- Convert the resource to JSON
```powershell
$MetricsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

