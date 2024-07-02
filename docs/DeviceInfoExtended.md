# DeviceInfoExtended
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceTags** | [**Tuple2DeviceTagIdDeviceTagValue[]**](Tuple2DeviceTagIdDeviceTagValue.md) |  | [optional] 
**DevicePackages** | [**DevicePackage[]**](DevicePackage.md) |  | [optional] 
**DeviceFleets** | [**Fleet[]**](Fleet.md) |  | [optional] 
**Notes** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**LastSeen** | **System.DateTime** |  | [optional] 
**DeviceId** | **String** |  | 
**LastUpdated** | **System.DateTime** |  | [optional] 
**DeviceUuid** | **String** |  | 
**NetworkInfo** | [**NetworkInfo**](NetworkInfo.md) |  | 
**DeviceStatus** | [**DeviceStatus**](DeviceStatus.md) |  | 
**ActivatedAt** | **System.DateTime** |  | [optional] 
**DeviceName** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DeviceInfoExtended = Initialize-TorizonPlatformAPIDeviceInfoExtended  -DeviceTags null `
 -DevicePackages null `
 -DeviceFleets null `
 -Notes null `
 -CreatedAt null `
 -LastSeen null `
 -DeviceId null `
 -LastUpdated null `
 -DeviceUuid null `
 -NetworkInfo null `
 -DeviceStatus null `
 -ActivatedAt null `
 -DeviceName null
```

- Convert the resource to JSON
```powershell
$DeviceInfoExtended | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

