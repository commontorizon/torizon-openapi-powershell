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

.PARAMETER InFlight
No description available.
.PARAMETER Targets
No description available.
.PARAMETER CorrelationId
No description available.
.OUTPUTS

QueueResponse<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIQueueResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${InFlight},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Targets},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CorrelationId}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIQueueResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $InFlight) {
            throw "invalid value for 'InFlight', 'InFlight' cannot be null."
        }

        if ($null -eq $Targets) {
            throw "invalid value for 'Targets', 'Targets' cannot be null."
        }

        if ($null -eq $CorrelationId) {
            throw "invalid value for 'CorrelationId', 'CorrelationId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inFlight" = ${InFlight}
            "targets" = ${Targets}
            "correlationId" = ${CorrelationId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to QueueResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to QueueResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

QueueResponse<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToQueueResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIQueueResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIQueueResponse
        $AllProperties = ("inFlight", "targets", "correlationId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'inFlight' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inFlight"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inFlight' missing."
        } else {
            $InFlight = $JsonParameters.PSobject.Properties["inFlight"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targets"))) {
            throw "Error! JSON cannot be serialized due to the required property 'targets' missing."
        } else {
            $Targets = $JsonParameters.PSobject.Properties["targets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "correlationId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'correlationId' missing."
        } else {
            $CorrelationId = $JsonParameters.PSobject.Properties["correlationId"].value
        }

        $PSO = [PSCustomObject]@{
            "inFlight" = ${InFlight}
            "targets" = ${Targets}
            "correlationId" = ${CorrelationId}
        }

        return $PSO
    }

}
