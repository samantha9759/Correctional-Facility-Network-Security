### 4.1 Patch Management

**Priority:** High

The endpoint was running Windows 10 Home, version 22H2, build 19045.6466, with update revision 6466.

The Windows Update interface reported that the device was no longer receiving security updates and prompted enrollment in Extended Security Updates (ESU).

The installed KB5126256 package is an ESU licensing preparation package. Its presence does not establish enrollment.

**Risk:** The endpoint may remain exposed to known vulnerabilities if applicable security updates are not being received.

**Recommendation:** Verify ESU eligibility and enrollment or upgrade to a supported operating system. Install applicable cumulative security updates and verify the resulting build.