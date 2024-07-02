# DelegationInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RemoteUri** | **String** |  | [optional] 
**FriendlyName** | **String** |  | [optional] 
**LastFetched** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationInfo = Initialize-TorizonPlatformAPIDelegationInfo  -RemoteUri null `
 -FriendlyName null `
 -LastFetched null
```

- Convert the resource to JSON
```powershell
$DelegationInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

