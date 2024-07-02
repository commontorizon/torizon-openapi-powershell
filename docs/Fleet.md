# Fleet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FleetType** | [**FleetType**](FleetType.md) |  | 
**CreatedAt** | **System.DateTime** |  | 
**Name** | **String** |  | 
**Expression** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Fleet = Initialize-TorizonPlatformAPIFleet  -FleetType null `
 -CreatedAt null `
 -Name null `
 -Expression null `
 -Id null
```

- Convert the resource to JSON
```powershell
$Fleet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

