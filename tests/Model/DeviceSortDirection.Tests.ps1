#
# Torizon OTA
#  This API is rate limited and will return the following headers for each API call.    - X-RateLimit-Limit - The total number of requests allowed within a time period   - X-RateLimit-Remaining - The total number of requests still allowed until the end of the rate limiting period   - X-RateLimit-Reset - The number of seconds until the limit is fully reset  In addition, if an API client is rate limited, it will receive a HTTP 420 response with the following header:     - Retry-After - The number of seconds to wait until this request is allowed  
# Version: 2.0-Beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'TorizonPlatformAPI' -name 'TorizonPlatformAPIDeviceSortDirection' {
    Context 'TorizonPlatformAPIDeviceSortDirection' {
        It 'Initialize-TorizonPlatformAPIDeviceSortDirection' {
            # a simple test to create an object
            #$NewObject = Initialize-TorizonPlatformAPIDeviceSortDirection
            #$NewObject | Should -BeOfType DeviceSortDirection
            #$NewObject.property | Should -Be 0
        }
    }
}
