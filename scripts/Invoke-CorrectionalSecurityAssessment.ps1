# Correctional Facility Security Assessment Lab
# Read-only Windows security posture assessment
# For authorized testing on your own computer or lab.

$ErrorActionPreference = "Continue"

$Results = @()

function Add-Finding {
    param(
        [string]$Category,
        [string]$Setting,
        [string]$Result,
        [string]$Status
    )

    $script:Results += [PSCustomObject]@{
        Category = $Category
        Setting  = $Setting
        Result   = $Result
        Status   = $Status
    }
}

Write-Host "Starting Windows Security Assessment..." -ForegroundColor Cyan

# 1. Operating System
try {
    $OS = Get-CimInstance Win32_OperatingSystem -ErrorAction Stop

    Add-Finding -Category "Operating System" `
        -Setting "Windows Version" `
        -Result "$($OS.Caption) - Build $($OS.BuildNumber)" `
        -Status "Information"
}
catch {
    Add-Finding "Operating System" "Windows Version" "Unable to retrieve" "Review"
}

# 2. Windows Firewall
try {
    $FirewallProfiles = Get-NetFirewallProfile -ErrorAction Stop

    foreach ($Profile in $FirewallProfiles) {
        $Status = if ($Profile.Enabled) { "Pass" } else { "Review" }

        Add-Finding -Category "Firewall" `
            -Setting "$($Profile.Name) Profile" `
            -Result "Enabled: $($Profile.Enabled)" `
            -Status $Status
    }
}
catch {
    Add-Finding "Firewall" "Firewall Profiles" "Unable to retrieve" "Review"
}

# 3. Microsoft Defender
try {
    $Defender = Get-MpComputerStatus -ErrorAction Stop

    Add-Finding "Endpoint Protection" "Antivirus Enabled" `
        "$($Defender.AntivirusEnabled)" `
        $(if ($Defender.AntivirusEnabled) { "Pass" } else { "Review" })

    Add-Finding "Endpoint Protection" "Real-Time Protection" `
        "$($Defender.RealTimeProtectionEnabled)" `
        $(if ($Defender.RealTimeProtectionEnabled) { "Pass" } else { "Review" })
}
catch {
    Add-Finding "Endpoint Protection" "Microsoft Defender" "Unavailable or inaccessible" "Review"
}

# 4. BitLocker
try {
    $BitLocker = Get-Command Get-BitLockerVolume -ErrorAction SilentlyContinue

    if ($BitLocker) {
        $Volumes = Get-BitLockerVolume -ErrorAction Stop

        foreach ($Volume in $Volumes) {
            Add-Finding "Encryption" "Volume $($Volume.MountPoint)" `
                "Protection: $($Volume.ProtectionStatus); Encryption: $($Volume.VolumeStatus)" `
                "Information"
        }
    }
    else {
        Add-Finding "Encryption" "BitLocker" "Command unavailable" "Review"
    }
}
catch {
    Add-Finding "Encryption" "BitLocker" "Unable to retrieve" "Review"
}

# 5. Local Administrators
try {
    $Admins = Get-LocalGroupMember -Group "Administrators" -ErrorAction Stop

    Add-Finding "Account Security" "Local Administrators" `
        "$($Admins.Count) account(s) or group(s) found" "Review"
}
catch {
    Add-Finding "Account Security" "Local Administrators" "Unable to retrieve" "Review"
}

# 6. Audit Policy
try {
    $AuditPolicy = auditpol.exe /get /category:*

    if ($LASTEXITCODE -eq 0) {
        Add-Finding "Logging" "Windows Audit Policy" `
            "Audit policy information retrieved" "Information"
    }
    else {
        Add-Finding "Logging" "Windows Audit Policy" `
            "Unable to retrieve audit policy" "Review"
    }
}
catch {
    Add-Finding "Logging" "Windows Audit Policy" "Unable to retrieve" "Review"
}

# 7. Windows Update Service
try {
    $UpdateService = Get-Service -Name wuauserv -ErrorAction Stop

    Add-Finding "Patch Management" "Windows Update Service" `
        "Service status: $($UpdateService.Status)" "Information"
}
catch {
    Add-Finding "Patch Management" "Windows Update Service" "Unable to retrieve" "Review"
}

# Display results
Write-Host "`nASSESSMENT RESULTS" -ForegroundColor Cyan
$Results | Format-Table -AutoSize -Wrap

# Export sanitized results
$OutputDirectory = Join-Path $PSScriptRoot "..\evidence"
New-Item -ItemType Directory -Force -Path $OutputDirectory | Out-Null

$OutputFile = Join-Path $OutputDirectory "Windows-Security-Assessment.csv"

$Results | Export-Csv -Path $OutputFile -NoTypeInformation

Write-Host "`nAssessment complete." -ForegroundColor Green
Write-Host "Evidence saved to: $OutputFile" -ForegroundColor Yellow