#
# Torizon OTA
#  This API is rate limited and will return the following headers for each API call.    - X-RateLimit-Limit - The total number of requests allowed within a time period   - X-RateLimit-Remaining - The total number of requests still allowed until the end of the rate limiting period   - X-RateLimit-Reset - The number of seconds until the limit is fully reset  In addition, if an API client is rate limited, it will receive a HTTP 420 response with the following header:     - Retry-After - The number of seconds to wait until this request is allowed  
# Version: 2.0-Beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Hostname
No description available.
.PARAMETER DeviceUuid
No description available.
.PARAMETER MacAddress
No description available.
.PARAMETER LocalIpV4
No description available.
.OUTPUTS

NetworkInfo<PSCustomObject>
#>

function Initialize-TorizonPlatformAPINetworkInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceUuid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MacAddress},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocalIpV4}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPINetworkInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $DeviceUuid) {
            throw "invalid value for 'DeviceUuid', 'DeviceUuid' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "hostname" = ${Hostname}
            "deviceUuid" = ${DeviceUuid}
            "macAddress" = ${MacAddress}
            "localIpV4" = ${LocalIpV4}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkInfo<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToNetworkInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPINetworkInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPINetworkInfo
        $AllProperties = ("hostname", "deviceUuid", "macAddress", "localIpV4")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'deviceUuid' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceUuid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deviceUuid' missing."
        } else {
            $DeviceUuid = $JsonParameters.PSobject.Properties["deviceUuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hostname"))) { #optional property not found
            $Hostname = $null
        } else {
            $Hostname = $JsonParameters.PSobject.Properties["hostname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "macAddress"))) { #optional property not found
            $MacAddress = $null
        } else {
            $MacAddress = $JsonParameters.PSobject.Properties["macAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localIpV4"))) { #optional property not found
            $LocalIpV4 = $null
        } else {
            $LocalIpV4 = $JsonParameters.PSobject.Properties["localIpV4"].value
        }

        $PSO = [PSCustomObject]@{
            "hostname" = ${Hostname}
            "deviceUuid" = ${DeviceUuid}
            "macAddress" = ${MacAddress}
            "localIpV4" = ${LocalIpV4}
        }

        return $PSO
    }

}

