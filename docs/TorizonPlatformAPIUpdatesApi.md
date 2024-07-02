# TorizonPlatformAPI.TorizonPlatformAPI\Api.TorizonPlatformAPIUpdatesApi

All URIs are relative to *https://app.torizon.io/api/v2beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-TorizonPlatformAPILockboxDetails**](TorizonPlatformAPIUpdatesApi.md#Get-TorizonPlatformAPILockboxDetails) | **GET** /lockbox-details | List all existing lockboxes on the repository, and their detailed contents
[**Get-TorizonPlatformAPILockboxes**](TorizonPlatformAPIUpdatesApi.md#Get-TorizonPlatformAPILockboxes) | **GET** /lockboxes | List all existing lockboxes on the repository
[**Get-TorizonPlatformAPILockboxesLockboxName**](TorizonPlatformAPIUpdatesApi.md#Get-TorizonPlatformAPILockboxesLockboxName) | **GET** /lockboxes/{lockbox_name} | Get the raw Uptane metadata for a lockbox
[**Invoke-TorizonPlatformAPIPatchUpdates**](TorizonPlatformAPIUpdatesApi.md#Invoke-TorizonPlatformAPIPatchUpdates) | **PATCH** /updates | Cancel a pending update for one or more devices
[**Submit-TorizonPlatformAPILockboxesLockboxName**](TorizonPlatformAPIUpdatesApi.md#Submit-TorizonPlatformAPILockboxesLockboxName) | **POST** /lockboxes/{lockbox_name} | Define a new lockbox, or update an existing one
[**Submit-TorizonPlatformAPIUpdates**](TorizonPlatformAPIUpdatesApi.md#Submit-TorizonPlatformAPIUpdates) | **POST** /updates | Launch an update to one or more devices or fleets


<a id="Get-TorizonPlatformAPILockboxDetails"></a>
# **Get-TorizonPlatformAPILockboxDetails**
> System.Collections.Hashtable Get-TorizonPlatformAPILockboxDetails<br>

List all existing lockboxes on the repository, and their detailed contents

 Returns a JSON object containing all lockbox metadata. The object has the lockbox name as a key, and the complete metadata contents (same as returned by the [GET /lockboxes/{lockbox_name}](#/Updates/getLockboxesLockbox_name) endpoint) as a value.  Note that _all_ lockboxes will be returned, including lockboxes that are expired, or that do not contain any packages.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# List all existing lockboxes on the repository, and their detailed contents
try {
    $Result = Get-TorizonPlatformAPILockboxDetails
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPILockboxDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System.Collections.Hashtable**](JsonSignedPayload.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPILockboxes"></a>
# **Get-TorizonPlatformAPILockboxes**
> String[] Get-TorizonPlatformAPILockboxes<br>

List all existing lockboxes on the repository

 Returns a list of lockbox names.  Note that _all_ lockboxes will be returned, including lockboxes that are expired, or that do not contain any packages.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# List all existing lockboxes on the repository
try {
    $Result = Get-TorizonPlatformAPILockboxes
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPILockboxes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String[]**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPILockboxesLockboxName"></a>
# **Get-TorizonPlatformAPILockboxesLockboxName**
> JsonSignedPayload Get-TorizonPlatformAPILockboxesLockboxName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LockboxName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <System.Nullable[Int32]><br>

Get the raw Uptane metadata for a lockbox

 Uptane metadata defines what packages are included in a lockbox. It is signed with a key specific to the offline updates role, and lists the valid packages (including their hashes) for a particular lockbox.  This endpoint returns the full Uptane metadata for a given lockbox.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LockboxName = "MyLockboxName" # String | 
$Version = 56 # Int32 |  (optional)

# Get the raw Uptane metadata for a lockbox
try {
    $Result = Get-TorizonPlatformAPILockboxesLockboxName -LockboxName $LockboxName -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPILockboxesLockboxName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LockboxName** | **String**|  | 
 **Version** | **Int32**|  | [optional] 

### Return type

[**JsonSignedPayload**](JsonSignedPayload.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TorizonPlatformAPIPatchUpdates"></a>
# **Invoke-TorizonPlatformAPIPatchUpdates**
> String[] Invoke-TorizonPlatformAPIPatchUpdates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Cancel a pending update for one or more devices

 Cancels any pending update for a list of devices. Note that this endpoint does not accept fleet UUIDs, only device UUIDs.  Updates can only be cancelled when they are Pending. After the device has received its update instructions, the update can no longer be cancelled from the server side.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RequestBody = "MyRequestBody" # String[] |  (optional)

# Cancel a pending update for one or more devices
try {
    $Result = Invoke-TorizonPlatformAPIPatchUpdates -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-TorizonPlatformAPIPatchUpdates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)|  | [optional] 

### Return type

**String[]**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-TorizonPlatformAPILockboxesLockboxName"></a>
# **Submit-TorizonPlatformAPILockboxesLockboxName**
> void Submit-TorizonPlatformAPILockboxesLockboxName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LockboxName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateLockboxRequest] <PSCustomObject><br>

Define a new lockbox, or update an existing one

 See the [secure offline updates](https://developer.toradex.com/torizon/torizon-platform/torizon-updates/how-to-use-secure-offline-updates-with-torizoncore/) documentation for background on this feature.  This endpoint will create a new lockbox with the specified name, or update the contents of a previously defined lockbox, if one with the specified name already exists.  The schema of the request body is similar to the [POST /updates](#/Updates/postUpdates) endpoint, with the principal difference that offline updates are not assigned to specific devices or fleets. Instead, lockboxes define which update packages are _valid_ for install via an offline update.  It is still possible to add custom metadata when generating a lockbox, but custom URIs will be ignored during an offline update, as the device will get its files directly from the lockbox rather than fetching over the network.  This endpoint can also be used to effectively revoke an existing lockbox. You can revoke a lockbox by updating it so that it does not contain any packages.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LockboxName = "MyLockboxName" # String | 
$CustomUpdateData = Initialize-CustomUpdateData -Uri "MyUri" -Metadata "MyMetadata"
$CreateLockboxRequest = Initialize-CreateLockboxRequest -Custom @{ key_example = $CustomUpdateData } -ExpiresAt (Get-Date) -PackageIds "MyPackageIds" # CreateLockboxRequest | 

# Define a new lockbox, or update an existing one
try {
    $Result = Submit-TorizonPlatformAPILockboxesLockboxName -LockboxName $LockboxName -CreateLockboxRequest $CreateLockboxRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-TorizonPlatformAPILockboxesLockboxName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LockboxName** | **String**|  | 
 **CreateLockboxRequest** | [**CreateLockboxRequest**](CreateLockboxRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-TorizonPlatformAPIUpdates"></a>
# **Submit-TorizonPlatformAPIUpdates**
> UpdateCreateResult Submit-TorizonPlatformAPIUpdates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateRequest] <PSCustomObject><br>

Launch an update to one or more devices or fleets

 This endpoint launches a software update. You can specify a list of packages to be installed, and a list of devices and/or fleets that the packages should be installed on. If you specify multiple packages, it will be treated as a [synchronous update](https://developer.toradex.com/torizon/torizon-platform/torizon-updates/torizon-updates-technical-overview/#synchronous-updates-540).  It is also possible to add custom metadata or a custom download URI when creating the update. This example sends a synchronous update containing application package `foo-1.0` and OS package `bar-1.0` to a single device, adding a custom download URI for the application package:  ``` {   ""packageIds"": [     ""foo-1.0"",     ""bar-1.0""   ],   ""custom"": {     ""foo-1.0"": {       ""uri"": ""https://example.com/files/foo-1.0.yaml"",     }   },   ""devices"": [     ""3fa85f64-5717-4562-b3fc-2c963f66afa6""   ] }         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CustomUpdateData = Initialize-CustomUpdateData -Uri "MyUri" -Metadata "MyMetadata"
$UpdateRequest = Initialize-UpdateRequest -Custom @{ key_example = $CustomUpdateData } -Fleets "MyFleets" -Devices "MyDevices" -PackageIds "MyPackageIds" # UpdateRequest | 

# Launch an update to one or more devices or fleets
try {
    $Result = Submit-TorizonPlatformAPIUpdates -UpdateRequest $UpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-TorizonPlatformAPIUpdates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateRequest** | [**UpdateRequest**](UpdateRequest.md)|  | 

### Return type

[**UpdateCreateResult**](UpdateCreateResult.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

