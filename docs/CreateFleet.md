# CreateFleet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** |  | [optional] 
**FleetType** | [**FleetType**](FleetType.md) |  | 
**Name** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CreateFleet = Initialize-TorizonPlatformAPICreateFleet  -Expression null `
 -FleetType null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateFleet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

