# Patch Management Finding

## Finding
Windows 10 Security Update and ESU Enrollment

## Severity
High

## Observations
- Operating System: Windows 10 Home
- Version: 22H2
- Architecture: 64-bit
- Current OS Build: 19045.6466
- Update Revision: 6466
- Associated Update: KB5071959
- ESU Preparation Package: KB5126256
- ESU Enrollment: Windows Update reports that the device is not receiving security updates and prompts enrollment.

## Technical Analysis
- Latest published Windows 10 22H2 ESU security release as of November 15, 2026: Build 19045.7846 (KB5131096), released November 10, 2026. This release applies to eligible devices enrolled in ESU.
- The assessed endpoint was running build 19045.6466 (KB5071959). Because Windows Update reported that the device was not enrolled in ESU, this comparison is a reference point and does not prove that KB5131096 was offered to this specific endpoint.
## Risk
An endpoint without applicable security updates may remain exposed to known vulnerabilities for which security fixes are available.

## Recommended Remediation
1. Verify eligibility for Windows 10 Extended Security Updates.
2. Complete ESU enrollment if eligible.
3. Alternatively, upgrade to a supported operating system.
4. Install applicable cumulative security updates.
5. Verify the resulting OS build and update history.
6. Repeat the security assessment to validate remediation.

## Evidence
- Windows Update ESU enrollment notification
- Registry build information
- Installed hotfix inventory
- Windows Update service configuration

## Assessment Limitations
This is a point-in-time endpoint assessment. The presence of an installed ESU preparation package does not establish ESU enrollment.

The assessment does not establish the complete list of missing security fixes.

## Reference
Microsoft Windows 10 Release Information:
https://learn.microsoft.com/en-us/windows/release-health/release-information
