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

.PARAMETER Series
No description available.
.OUTPUTS

MetricsResponse<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIMetricsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Series}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIMetricsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "series" = ${Series}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MetricsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to MetricsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MetricsResponse<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToMetricsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIMetricsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIMetricsResponse
        $AllProperties = ("series")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "series"))) { #optional property not found
            $Series = $null
        } else {
            $Series = $JsonParameters.PSobject.Properties["series"].value
        }

        $PSO = [PSCustomObject]@{
            "series" = ${Series}
        }

        return $PSO
    }

}
