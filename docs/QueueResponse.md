# QueueResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InFlight** | **Boolean** |  | 
**Targets** | [**System.Collections.Hashtable**](TargetImage.md) |  | 
**CorrelationId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$QueueResponse = Initialize-TorizonPlatformAPIQueueResponse  -InFlight null `
 -Targets null `
 -CorrelationId null
```

- Convert the resource to JSON
```powershell
$QueueResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

