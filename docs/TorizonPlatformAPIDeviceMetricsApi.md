# TorizonPlatformAPI.TorizonPlatformAPI\Api.TorizonPlatformAPIDeviceMetricsApi

All URIs are relative to *https://app.torizon.io/api/v2beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics**](TorizonPlatformAPIDeviceMetricsApi.md#Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics) | **GET** /device-data/devices/{deviceUuid}/metrics | Get metrics data from a single device
[**Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics**](TorizonPlatformAPIDeviceMetricsApi.md#Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics) | **GET** /device-data/fleets/{fleetId}/metrics | Get aggregated metrics data from a fleet of devices
[**Get-TorizonPlatformAPIDeviceDataMetricNames**](TorizonPlatformAPIDeviceMetricsApi.md#Get-TorizonPlatformAPIDeviceDataMetricNames) | **GET** /device-data/metric-names | Get the list of metrics available in your repository


<a id="Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics"></a>
# **Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics**
> MetricsResponse Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUuid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Metric] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Resolution] <System.Nullable[Int32]><br>

Get metrics data from a single device

 This endpoint will return time-bucketed data as reported by the specified device. You must specify a time interval in  Unix Epoch milliseconds via the `from` and `to` query parameters.  You can optionally specify one or more metrics in the query parameter (e.g. `metrics=metric1&metrics=metrics2`, etc.  OR `metrics[]=metric1,metrics2`, etc.). If you do not specify, you will get all metrics available in the repository.  You can also specify a `resolution`. This parameter defaults to 200, with a maximum permitted value of 2000, and  determines the granularity of the data returned. The data returned will be separated into buckets, with each bucket  representing the mean value of the data returned during that period.  For example, suppose you have a device reporting its CPU temperature every minute. You request that metric, with a  resolution of 24 and a time interval that is 1 day long. You will get back 24 data points, each representing a one-hour slice of time. The value returned for each one-hour slice will be the average of the 60 reported  measurements that the device sent during that hour.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeviceUuid = "MyDeviceUuid" # String | 
$From = 789 # Int64 | 
$To = 789 # Int64 | 
$Metric = "MyMetric" # String[] |  (optional)
$Resolution = 56 # Int32 |  (optional)

# Get metrics data from a single device
try {
    $Result = Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics -DeviceUuid $DeviceUuid -From $From -To $To -Metric $Metric -Resolution $Resolution
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceUuid** | **String**|  | 
 **From** | **Int64**|  | 
 **To** | **Int64**|  | 
 **Metric** | [**String[]**](String.md)|  | [optional] 
 **Resolution** | **Int32**|  | [optional] 

### Return type

[**MetricsResponse**](MetricsResponse.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics"></a>
# **Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics**
> MetricsResponse Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FleetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Metric] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Resolution] <System.Nullable[Int32]><br>

Get aggregated metrics data from a fleet of devices

 This endpoint will return aggregated time-bucketed data as reported by the devices in the specified fleet. You must  specify a time interval in Unix Epoch milliseconds via the `from` and `to` query parameters.   You can also specify a `resolution`. This parameter defaults to 200, with a maximum permitted value of 2000, and  determines the granularity of the data returned. The data returned will be separated into buckets, with each bucket  representing the aggregated data from the period. For example, if you specify a one day long time interval with a resolution of 24, you will get 24 buckets, each representing a one hour slice of the day. If you request a resolution  of 48, your buckets will be 30 minutes long.  You also must specify one or more metrics as query parameters (e.g. `metrics=metric1&metrics=metrics2`, etc. OR  `metrics[]=metric1,metrics2`, etc.). For each metric you specify, you will get back four different series of datapoints:   * `{metric}-count` reports how many devices in the fleet actually reported data during this time interval. * `{metric}-avg` reports the average value of all reported values for the metric in the period. Note that the average  is over the number of devices that reported data: devices that didn't report the metric during the interval will not be reflected in this datapoint. * `{metric}-max` gives the highest value reported by a device in the specified interval * `{metric}-min` gives the lowest value reported by a device in the specified interval         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FleetId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$From = 789 # Int64 | 
$To = 789 # Int64 | 
$Metric = "MyMetric" # String[] |  (optional)
$Resolution = 56 # Int32 |  (optional)

# Get aggregated metrics data from a fleet of devices
try {
    $Result = Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics -FleetId $FleetId -From $From -To $To -Metric $Metric -Resolution $Resolution
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FleetId** | **String**|  | 
 **From** | **Int64**|  | 
 **To** | **Int64**|  | 
 **Metric** | [**String[]**](String.md)|  | [optional] 
 **Resolution** | **Int32**|  | [optional] 

### Return type

[**MetricsResponse**](MetricsResponse.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIDeviceDataMetricNames"></a>
# **Get-TorizonPlatformAPIDeviceDataMetricNames**
> PaginationResultString Get-TorizonPlatformAPIDeviceDataMetricNames<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.Nullable[Int64]><br>

Get the list of metrics available in your repository

 Lists the metrics available in your repository.  In the default TorizonCore configuration, devices will report certain default metrics. You can also add your own metrics, as described in the [TorizonCore documentation](https://developer.toradex.com/torizon/torizon-platform/device-monitoring-in-torizoncore/#customizing-device-metrics-for-torizon-platform). Calling this endpoint will give you the list of valid metric names for your repository; generally this will include the default set plus any that you have defined yourself.  You can optionally specify a time interval in Unix Epoch milliseconds via the `from` and `to` query parameters. This will return the list of metrics reported by devices in your repository during that specific interval.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$From = 789 # Int64 |  (optional)
$To = 789 # Int64 |  (optional)

# Get the list of metrics available in your repository
try {
    $Result = Get-TorizonPlatformAPIDeviceDataMetricNames -From $From -To $To
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIDeviceDataMetricNames: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **From** | **Int64**|  | [optional] 
 **To** | **Int64**|  | [optional] 

### Return type

[**PaginationResultString**](PaginationResultString.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

