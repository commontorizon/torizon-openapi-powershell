# TorizonPlatformAPI.TorizonPlatformAPI\Api.TorizonPlatformAPIDevicesApi

All URIs are relative to *https://app.torizon.io/api/v2beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid) | **DELETE** /devices/{deviceUuid} | Delete a single device
[**Get-TorizonPlatformAPIDevices**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevices) | **GET** /devices | Query device information
[**Get-TorizonPlatformAPIDevicesDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesDeviceuuid) | **GET** /devices/{deviceUuid} | Get detailed information about a single device
[**Get-TorizonPlatformAPIDevicesNameDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNameDeviceuuid) | **GET** /devices/name/{deviceUuid} | Get the display name of a single device
[**Get-TorizonPlatformAPIDevicesNetwork**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNetwork) | **GET** /devices/network | Get network information for many devices
[**Get-TorizonPlatformAPIDevicesNetworkDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNetworkDeviceuuid) | **GET** /devices/network/{deviceUuid} | Get network information for a single device
[**Get-TorizonPlatformAPIDevicesNotesDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNotesDeviceuuid) | **GET** /devices/notes/{deviceUuid} | Get the device notes for a specific device
[**Get-TorizonPlatformAPIDevicesPackages**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesPackages) | **GET** /devices/packages | Get information about the installed packages for many devices
[**Get-TorizonPlatformAPIDevicesPackagesDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesPackagesDeviceuuid) | **GET** /devices/packages/{deviceUuid} | Get information about the installed packages for a single device
[**Get-TorizonPlatformAPIDevicesToken**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesToken) | **GET** /devices/token | Retrieve device provisioning token
[**Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment) | **GET** /devices/uptane/{deviceUuid}/assignment | Show detailed information about the currently-assigned update for a single device
[**Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents**](TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents) | **GET** /devices/uptane/{deviceUuid}/components | Get a list of the software components reported by a single device
[**Submit-TorizonPlatformAPIDevices**](TorizonPlatformAPIDevicesApi.md#Submit-TorizonPlatformAPIDevices) | **POST** /devices | Manually create a new device
[**Send-TorizonPlatformAPIDevicesNameDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Send-TorizonPlatformAPIDevicesNameDeviceuuid) | **PUT** /devices/name/{deviceUuid} | Set the display name of a single device
[**Send-TorizonPlatformAPIDevicesNotesDeviceuuid**](TorizonPlatformAPIDevicesApi.md#Send-TorizonPlatformAPIDevicesNotesDeviceuuid) | **PUT** /devices/notes/{deviceUuid} | Set the device notes for a specific device


<a id="Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid"></a>
# **Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid**
> void Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Delete a single device

 Permanently delete a device from your repository. Once deleted, the device will no longer be able to connect to the server.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Delete a single device
try {
    $Result = Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevices"></a>
# **Get-TorizonPlatformAPIDevices**
> PaginationResultDeviceInfoBasic Get-TorizonPlatformAPIDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NameContains] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortDirection] <PSCustomObject><br>

Query device information

 Retrieves a list of devices in your repository. Can be filtered by device name, or return a list of specific devices by giving the device UUIDs to return as query parameters.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)
$DeviceUuid = "MyDeviceUuid" # String[] |  (optional)
$NameContains = "MyNameContains" # String |  (optional)
$SortBy = "Name" # DeviceSort |  (optional)
$SortDirection = "Asc" # DeviceSortDirection |  (optional)

# Query device information
try {
    $Result = Get-TorizonPlatformAPIDevices -Offset $Offset -Limit $Limit -DeviceUuid $DeviceUuid -NameContains $NameContains -SortBy $SortBy -SortDirection $SortDirection
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 
 **DeviceUuid** | [**String[]**](String.md)|  | [optional] 
 **NameContains** | **String**|  | [optional] 
 **SortBy** | [**DeviceSort**](DeviceSort.md)|  | [optional] 
 **SortDirection** | [**DeviceSortDirection**](DeviceSortDirection.md)|  | [optional] 

### Return type

[**PaginationResultDeviceInfoBasic**](PaginationResultDeviceInfoBasic.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesDeviceuuid"></a>
# **Get-TorizonPlatformAPIDevicesDeviceuuid**
> DeviceInfoExtended Get-TorizonPlatformAPIDevicesDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Get detailed information about a single device

 Shows all available information about a single device. Included information: * Name, ID, UUID, notes (if any) * Time of provisioning, activation, latest update, and last connection to the repository * Any fleets the device is part of * Installed packages, if known * Network information (local IP address, MAC, hostname) * Device tags, if any         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Get detailed information about a single device
try {
    $Result = Get-TorizonPlatformAPIDevicesDeviceuuid -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

[**DeviceInfoExtended**](DeviceInfoExtended.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesNameDeviceuuid"></a>
# **Get-TorizonPlatformAPIDevicesNameDeviceuuid**
> String Get-TorizonPlatformAPIDevicesNameDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Get the display name of a single device

 Gets the display name of a device. The displayed name of the device is only a server-side concept; the device is not aware of its display name.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Get the display name of a single device
try {
    $Result = Get-TorizonPlatformAPIDevicesNameDeviceuuid -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesNameDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesNetwork"></a>
# **Get-TorizonPlatformAPIDevicesNetwork**
> PaginationResultNetworkInfo Get-TorizonPlatformAPIDevicesNetwork<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String[]><br>

Get network information for many devices

 Retrieves network information (local IP address, MAC, hostname) for multiple devices. A list of devices can be specified as a query parameter; if no devices are specified will return information for all devices in the repository.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)
$DeviceUuid = "MyDeviceUuid" # String[] |  (optional)

# Get network information for many devices
try {
    $Result = Get-TorizonPlatformAPIDevicesNetwork -Offset $Offset -Limit $Limit -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesNetwork: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 
 **DeviceUuid** | [**String[]**](String.md)|  | [optional] 

### Return type

[**PaginationResultNetworkInfo**](PaginationResultNetworkInfo.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesNetworkDeviceuuid"></a>
# **Get-TorizonPlatformAPIDevicesNetworkDeviceuuid**
> NetworkInfo Get-TorizonPlatformAPIDevicesNetworkDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Get network information for a single device

Retrieves network information (local IP address, MAC, hostname) for a single device.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Get network information for a single device
try {
    $Result = Get-TorizonPlatformAPIDevicesNetworkDeviceuuid -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesNetworkDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

[**NetworkInfo**](NetworkInfo.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesNotesDeviceuuid"></a>
# **Get-TorizonPlatformAPIDevicesNotesDeviceuuid**
> String Get-TorizonPlatformAPIDevicesNotesDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Get the device notes for a specific device

 Gets the device notes for a device. Device notes are shown in the web UI, and can be used to store additional information about the device.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Get the device notes for a specific device
try {
    $Result = Get-TorizonPlatformAPIDevicesNotesDeviceuuid -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesNotesDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesPackages"></a>
# **Get-TorizonPlatformAPIDevicesPackages**
> PaginationResultDevicePackages Get-TorizonPlatformAPIDevicesPackages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NameContains] <String><br>

Get information about the installed packages for many devices

 Returns a list of devices and the packages those devices have installed. A list of devices can be specified as a query parameter; if no devices are specified will return information for all devices in the repository.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)
$DeviceUuid = "MyDeviceUuid" # String[] |  (optional)
$NameContains = "MyNameContains" # String |  (optional)

# Get information about the installed packages for many devices
try {
    $Result = Get-TorizonPlatformAPIDevicesPackages -Offset $Offset -Limit $Limit -DeviceUuid $DeviceUuid -NameContains $NameContains
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesPackages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 
 **DeviceUuid** | [**String[]**](String.md)|  | [optional] 
 **NameContains** | **String**|  | [optional] 

### Return type

[**PaginationResultDevicePackages**](PaginationResultDevicePackages.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesPackagesDeviceuuid"></a>
# **Get-TorizonPlatformAPIDevicesPackagesDeviceuuid**
> DevicePackages Get-TorizonPlatformAPIDevicesPackagesDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Get information about the installed packages for a single device

Returns a list of the packages installed on the device.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Get information about the installed packages for a single device
try {
    $Result = Get-TorizonPlatformAPIDevicesPackagesDeviceuuid -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesPackagesDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

[**DevicePackages**](DevicePackages.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesToken"></a>
# **Get-TorizonPlatformAPIDevicesToken**
> ProvisionInfo Get-TorizonPlatformAPIDevicesToken<br>

Retrieve device provisioning token

Retrieves a short-lived access token that can only be used to provision device

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Retrieve device provisioning token
try {
    $Result = Get-TorizonPlatformAPIDevicesToken
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProvisionInfo**](ProvisionInfo.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment"></a>
# **Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment**
> QueueResponse[] Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Show detailed information about the currently-assigned update for a single device

 Returns the device's current update assignment, if any.  Update assignments are an Uptane concept. The assignment is what the device will be instructed to install, the next time it checks for an update. An update assignment does not necessarily mean the device will install an update. If, for example, the device reports that it already has all of the assigned software components installed, it will take no further action.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Show detailed information about the currently-assigned update for a single device
try {
    $Result = Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

[**QueueResponse[]**](QueueResponse.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents"></a>
# **Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents**
> EcuInfoResponse[] Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>

Get a list of the software components reported by a single device

 Returns a list of the device components.  Components are an Uptane concept. In the Uptane standard, they are normally referred to as ""ECUs"", and represent individual discrete hardware modules in a vehicle. In TorizonCore, we use this concept to allow updates to be sent independently to different software components of the system.  In particular, TorizonCore devices will normally have at least two components: one for the base OS, and one for the application software.  Components have an ID (assumed to be the component's serial number in the automotive case) and a hardwareID (an indicator of the make or model of the component, for determining firmware/package compatibility). In TorizonCore, we give the application component the hardwareID ""docker-compose"", and the base OS component a hardwareID corresponding to the SoM's model (e.g. ""apalis-imx8"").  This endpoint returns a list of the components registered on the device, and the current software image installed on each one, if known.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 

# Get a list of the software components reported by a single device
try {
    $Result = Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents -DeviceUuid $DeviceUuid
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 

### Return type

[**EcuInfoResponse[]**](EcuInfoResponse.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-TorizonPlatformAPIDevices"></a>
# **Submit-TorizonPlatformAPIDevices**
> System.IO.FileInfo Submit-TorizonPlatformAPIDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceCreateReq] <PSCustomObject><br>

Manually create a new device

 Creates a new device in your repository, returning the device credentials as a zipfile. This should not normally be used; the usual way to add a device is for the device itself to call this endpoint, using a short-lived provisioning token (for example, as retrieved from the [GET /devices/token](#/Devices/getDevicesToken) endpoint).  You can use this endpoint to create devices in bulk, but you will then have to manually provision the individual credentials onto each device.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceCreateReq = Initialize-DeviceCreateReq -DeviceName "MyDeviceName" -DeviceId "MyDeviceId" # DeviceCreateReq | 

# Manually create a new device
try {
    $Result = Submit-TorizonPlatformAPIDevices -DeviceCreateReq $DeviceCreateReq
} catch {
    Write-Host ("Exception occurred when calling Submit-TorizonPlatformAPIDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceCreateReq** | [**DeviceCreateReq**](DeviceCreateReq.md)|  | 

### Return type

**System.IO.FileInfo**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-TorizonPlatformAPIDevicesNameDeviceuuid"></a>
# **Send-TorizonPlatformAPIDevicesNameDeviceuuid**
> void Send-TorizonPlatformAPIDevicesNameDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>

Set the display name of a single device

 Sets the display name of a device. The displayed name of the device is only a server-side concept; the device is not aware of its display name.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 
$Body = "MyBody" # String | 

# Set the display name of a single device
try {
    $Result = Send-TorizonPlatformAPIDevicesNameDeviceuuid -DeviceUuid $DeviceUuid -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Send-TorizonPlatformAPIDevicesNameDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 
 **Body** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-TorizonPlatformAPIDevicesNotesDeviceuuid"></a>
# **Send-TorizonPlatformAPIDevicesNotesDeviceuuid**
> void Send-TorizonPlatformAPIDevicesNotesDeviceuuid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>

Set the device notes for a specific device

 Sets the device notes for a device. Device notes are shown in the web UI, and can be used to store additional information about the device. Accepts a string up to approximately 64kb; will be rendered as Markdown in the web UI.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 
$Body = "MyBody" # String | 

# Set the device notes for a specific device
try {
    $Result = Send-TorizonPlatformAPIDevicesNotesDeviceuuid -DeviceUuid $DeviceUuid -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Send-TorizonPlatformAPIDevicesNotesDeviceuuid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 
 **Body** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

