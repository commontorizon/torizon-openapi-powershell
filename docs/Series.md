# Series
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Points** | [**Tuple2LongOptionDouble[]**](Tuple2LongOptionDouble.md) |  | [optional] 
**Meta** | [**SeriesMeta**](SeriesMeta.md) |  | 
**Name** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Series = Initialize-TorizonPlatformAPISeries  -Points null `
 -Meta null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Series | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

