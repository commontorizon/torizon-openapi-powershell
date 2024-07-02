# UpdateCreateResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotAffected** | [**SimpleDeviceNotAffectedInfo[]**](SimpleDeviceNotAffectedInfo.md) |  | [optional] 
**Affected** | [**SimpleDeviceInfo[]**](SimpleDeviceInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateCreateResult = Initialize-TorizonPlatformAPIUpdateCreateResult  -NotAffected null `
 -Affected null
```

- Convert the resource to JSON
```powershell
$UpdateCreateResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

