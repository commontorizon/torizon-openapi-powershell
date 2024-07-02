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

.PARAMETER Bucket
No description available.
.PARAMETER Method
No description available.
.OUTPUTS

TimeAggregation<PSCustomObject>
#>

function Initialize-TorizonPlatformAPITimeAggregation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Bucket},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Method}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPITimeAggregation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Bucket) {
            throw "invalid value for 'Bucket', 'Bucket' cannot be null."
        }

        if ($null -eq $Method) {
            throw "invalid value for 'Method', 'Method' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "bucket" = ${Bucket}
            "method" = ${Method}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TimeAggregation<PSCustomObject>

.DESCRIPTION

Convert from JSON to TimeAggregation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TimeAggregation<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToTimeAggregation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPITimeAggregation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPITimeAggregation
        $AllProperties = ("bucket", "method")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'bucket' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bucket"))) {
            throw "Error! JSON cannot be serialized due to the required property 'bucket' missing."
        } else {
            $Bucket = $JsonParameters.PSobject.Properties["bucket"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "method"))) {
            throw "Error! JSON cannot be serialized due to the required property 'method' missing."
        } else {
            $Method = $JsonParameters.PSobject.Properties["method"].value
        }

        $PSO = [PSCustomObject]@{
            "bucket" = ${Bucket}
            "method" = ${Method}
        }

        return $PSO
    }

}
