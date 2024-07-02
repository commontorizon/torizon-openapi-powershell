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

.PARAMETER DeviceIds
No description available.
.PARAMETER Aggregation
No description available.
.OUTPUTS

SeriesMeta<PSCustomObject>
#>

function Initialize-TorizonPlatformAPISeriesMeta {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DeviceIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Aggregation}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPISeriesMeta' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Aggregation) {
            throw "invalid value for 'Aggregation', 'Aggregation' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "deviceIds" = ${DeviceIds}
            "aggregation" = ${Aggregation}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SeriesMeta<PSCustomObject>

.DESCRIPTION

Convert from JSON to SeriesMeta<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SeriesMeta<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToSeriesMeta {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPISeriesMeta' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPISeriesMeta
        $AllProperties = ("deviceIds", "aggregation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'aggregation' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'aggregation' missing."
        } else {
            $Aggregation = $JsonParameters.PSobject.Properties["aggregation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceIds"))) { #optional property not found
            $DeviceIds = $null
        } else {
            $DeviceIds = $JsonParameters.PSobject.Properties["deviceIds"].value
        }

        $PSO = [PSCustomObject]@{
            "deviceIds" = ${DeviceIds}
            "aggregation" = ${Aggregation}
        }

        return $PSO
    }

}
