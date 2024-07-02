# TorizonPlatformAPI.TorizonPlatformAPI\Api.TorizonPlatformAPIFleetsApi

All URIs are relative to *https://app.torizon.io/api/v2beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-TorizonPlatformAPIDeleteFleetsFleetid**](TorizonPlatformAPIFleetsApi.md#Invoke-TorizonPlatformAPIDeleteFleetsFleetid) | **DELETE** /fleets/{fleetId} | Delete a fleet
[**Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices**](TorizonPlatformAPIFleetsApi.md#Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices) | **DELETE** /fleets/{fleetId}/devices | Remove devices from a fleet
[**Get-TorizonPlatformAPIFleets**](TorizonPlatformAPIFleetsApi.md#Get-TorizonPlatformAPIFleets) | **GET** /fleets | Get information about all fleets in your repository
[**Get-TorizonPlatformAPIFleetsFleetidDevices**](TorizonPlatformAPIFleetsApi.md#Get-TorizonPlatformAPIFleetsFleetidDevices) | **GET** /fleets/{fleetId}/devices | Get information about the devices in a single fleet
[**Submit-TorizonPlatformAPIFleets**](TorizonPlatformAPIFleetsApi.md#Submit-TorizonPlatformAPIFleets) | **POST** /fleets | Create a new fleet
[**Submit-TorizonPlatformAPIFleetsFleetidDevices**](TorizonPlatformAPIFleetsApi.md#Submit-TorizonPlatformAPIFleetsFleetidDevices) | **POST** /fleets/{fleetId}/devices | Add devices to a fleet


<a id="Invoke-TorizonPlatformAPIDeleteFleetsFleetid"></a>
# **Invoke-TorizonPlatformAPIDeleteFleetsFleetid**
> void Invoke-TorizonPlatformAPIDeleteFleetsFleetid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FleetId] <String><br>

Delete a fleet

 Permanently delete a fleet. Devices in the fleet are not deleted, but are no longer associated with the deleted fleet.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FleetId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 

# Delete a fleet
try {
    $Result = Invoke-TorizonPlatformAPIDeleteFleetsFleetid -FleetId $FleetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-TorizonPlatformAPIDeleteFleetsFleetid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FleetId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices"></a>
# **Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices**
> void Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FleetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Remove devices from a fleet

 Removes devices, specified by a list of device UUIDs in the body, from a specific fleet.  Note: only applicable to static fleets.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FleetId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$RequestBody = "MyRequestBody" # String[] |  (optional)

# Remove devices from a fleet
try {
    $Result = Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices -FleetId $FleetId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FleetId** | **String**|  | 
 **RequestBody** | [**String[]**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIFleets"></a>
# **Get-TorizonPlatformAPIFleets**
> PaginationResultFleet Get-TorizonPlatformAPIFleets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>

Get information about all fleets in your repository

 Returns a list of fleets along with their UUIDs.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)

# Get information about all fleets in your repository
try {
    $Result = Get-TorizonPlatformAPIFleets -Offset $Offset -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIFleets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 

### Return type

[**PaginationResultFleet**](PaginationResultFleet.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIFleetsFleetidDevices"></a>
# **Get-TorizonPlatformAPIFleetsFleetidDevices**
> PaginationResultDeviceInfoBasic Get-TorizonPlatformAPIFleetsFleetidDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FleetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>

Get information about the devices in a single fleet

 Returns device information for all devices in the specified fleet. The schema for device data is the same as the [GET /devices](#/Devices/getDevices) endpoint.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FleetId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)

# Get information about the devices in a single fleet
try {
    $Result = Get-TorizonPlatformAPIFleetsFleetidDevices -FleetId $FleetId -Offset $Offset -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIFleetsFleetidDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FleetId** | **String**|  | 
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 

### Return type

[**PaginationResultDeviceInfoBasic**](PaginationResultDeviceInfoBasic.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-TorizonPlatformAPIFleets"></a>
# **Submit-TorizonPlatformAPIFleets**
> String Submit-TorizonPlatformAPIFleets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateFleet] <PSCustomObject><br>

Create a new fleet

 Creates a new fleet. You must specify a fleet name and a fleet type, which can be `static` or `dynamic`. Static fleets are the normal way of creating fleets on the Torizon platform. Dynamic fleets have an associated pattern matching expression, and devices that match the pattern are automatically added to the group.  If you are interested in using dynamic groups, please contact support--the expression language is not fully documented yet.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CreateFleet = Initialize-CreateFleet -Expression "MyExpression" -FleetType "static" -Name "MyName" # CreateFleet | 

# Create a new fleet
try {
    $Result = Submit-TorizonPlatformAPIFleets -CreateFleet $CreateFleet
} catch {
    Write-Host ("Exception occurred when calling Submit-TorizonPlatformAPIFleets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateFleet** | [**CreateFleet**](CreateFleet.md)|  | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-TorizonPlatformAPIFleetsFleetidDevices"></a>
# **Submit-TorizonPlatformAPIFleetsFleetidDevices**
> void Submit-TorizonPlatformAPIFleetsFleetidDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FleetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Add devices to a fleet

 Adds devices, specified by a list of device UUIDs in the body, to a specific fleet.  Note: only applicable to static fleets.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FleetId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$RequestBody = "MyRequestBody" # String[] |  (optional)

# Add devices to a fleet
try {
    $Result = Submit-TorizonPlatformAPIFleetsFleetidDevices -FleetId $FleetId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Submit-TorizonPlatformAPIFleetsFleetidDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FleetId** | **String**|  | 
 **RequestBody** | [**String[]**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

