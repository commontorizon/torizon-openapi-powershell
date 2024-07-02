# TargetImage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Uri** | **String** |  | [optional] 
**Image** | [**Image**](Image.md) |  | 

## Examples

- Prepare the resource
```powershell
$TargetImage = Initialize-TorizonPlatformAPITargetImage  -CreatedAt null `
 -Uri null `
 -Image null
```

- Convert the resource to JSON
```powershell
$TargetImage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

